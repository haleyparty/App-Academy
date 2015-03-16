# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)
	arr = string.split(//)
	half_length = arr.length / 2

	i = 0
	while i < half_length
		arr[i], arr[-1-i] = arr[-1-i], arr[i]
		i += 1
	end

	arr.join
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s)