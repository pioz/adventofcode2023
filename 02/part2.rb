input = File.read('input.txt')

sum = 0
input.each_line.sum do |line|
  red = 0
  green = 0
  blue = 0
  m = /^Game\s(\d+):\s(.*)$/.match(line)
  id = m[1].to_i
  sets = m[2].split('; ')
  sets.each do |set|
    cubes = set.split(', ')
    cubes.each do |cube|
      m = /^(\d+)/.match(cube)
      n = m[1].to_i
      case cube
      when /red$/
        red = n if n > red
      when /green$/
        green = n if n > green
      when /blue$/
        blue = n if n > blue
      end
    end
  end
  sum += red * green * blue
end

puts sum
