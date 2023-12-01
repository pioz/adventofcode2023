input = File.read('input.txt')

sum = input.each_line.sum do |line|
	digits = line.scan(/\d/)
	(digits[0] + digits[-1]).to_i
end

puts sum
