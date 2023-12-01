input = File.read('input.txt')

str_to_int_map = {
  'zero'  => '0',
  'one'   => '1',
  'two'   => '2',
  'three' => '3',
  'four'  => '4',
  'five'  => '5',
  'six'   => '6',
  'seven' => '7',
  'eight' => '8',
  'nine'  => '9'
}

sum = input.each_line.sum do |line|
	# We need to use look ahead operator `(?=pattern)` to match numbers like 'oneight'
	digits = line.scan(/(?=(\d|#{str_to_int_map.keys.join('|')}))/).map do |(digit, _)|
		str_to_int_map[digit] || digit
	end

	(digits.first + digits.last).to_i
end

puts sum
