input = File.read('input.txt')

sum = 0
input.each_line do |line|
  impossible = false
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
        impossible = true if n > 12
      when /green$/
        impossible = true if n > 13
      when /blue$/
        impossible = true if n > 14
      end
    end
    break if impossible
  end
  sum += id if !impossible
end

puts sum
