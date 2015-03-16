# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)

	num_minutes = minutes % 60
	num_hours = (minutes - num_minutes) / 60

	num_minutes = num_minutes.to_s
	if num_minutes.length < 2
		num_minutes = num_minutes + "0"
	end

	return num_hours.to_s + ":" + num_minutes
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)