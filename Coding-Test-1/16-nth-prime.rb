# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

def is_prime?(n)

	return false if n == 1

	i = 2
	while i < n
		return false if n % i == 0
		i += 1
	end

	return true

end

def nth_prime(n)

	prime_count = 0

	i = 2
	while true
		if is_prime?(i)
			prime_count += 1
			return i if n == prime_count
		end
		i += 1
	end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)