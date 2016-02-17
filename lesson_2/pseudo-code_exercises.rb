# Method that returns the sum of two integers

# Given two integers,
# Add the integers
# Return the results to the user

# START

# GET num_1
# GET num_2
# SET num_3 = num_1 + num_2
# PRINT num_3

# END

def add_em(num_1, num_2)
  return num_1 + num_2
end

puts add_em(2, 3)


# Method that takes an array of strings, and returns a string that is all those strings concatenated together
# Given an array of strings,
# Go through the array
# Concatenate each string to the end of the one before
# Return the new concatenated string

# START

# SET arr = the array of strings
# SET the_string = the first element of arr
# iterate through arr, starting with the second element
# SET the_string = the_string + element of arr

# RETURN the_string

# END

def cat_strings(strings)
  new_string = ""
  strings.each { |string| new_string += string }
  new_string
end

puts cat_strings(["This", "is", "the", "song", "that", "never", "ends"])
puts cat_strings(["It's ", "better ", "with ", "trailing ", "whitespace."])

# Method that takes an array of integers, and returns a new array with every other element
# Given an array of integers
# Create a new array
# Starting with the first element, add that to the array
# Skip the next element and repeat

# START

# Given an array, arr
# Create new_array
# Iterate through arr,
# SET new_array = first element of arr
# Skip next element
# SET new_array = third element of arr
# repeat
# RETURN new_array

# END

def every_other(numbers)
  new_arr = []
  numbers.each_with_index do |number, index|
    if index % 2 == 1
      new_arr.push(number)
    end
  end
  return new_arr
end

p every_other([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15])
