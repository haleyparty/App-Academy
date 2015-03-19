# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)

	char_count = Hash.new
	i = 0
	while i < string.length
		if char_count.has_key?(string[i])
			char_count[string[i]] += 1
		else
			char_count[string[i]] = 1
		end
		i += 1
	end

	repeat_count = 0
	char_count.each do |key, value|
		repeat_count += 1 if value > 1
	end

	return repeat_count

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
