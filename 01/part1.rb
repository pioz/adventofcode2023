input = File.read('input.txt')

sum = input.each_line.sum do |line|
	digits = line.scan(/\d/)
	(digits.first + digits.last).to_i
end

puts sum
