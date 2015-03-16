# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

	most_common_final = nil
	count_final = 0

	letter_round = 0
	while letter_round < string.length
		most_common = string[letter_round]
		count = 0

		letter_tally = 0
		while letter_tally < string.length
			if string[letter_tally] == most_common
				count += 1
			end
			letter_tally += 1
		end

		letter_round += 1
	end

	if most_common_final == nil || count > count_final
		most_common_final = most_common
		count_final = count
	end

	return [most_common_final, count_final]

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s)