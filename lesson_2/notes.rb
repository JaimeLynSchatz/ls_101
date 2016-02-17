# Notes on Style for 101-Lesson 2
# Parenthesis
#
# The parens are optional, but we'll use them while learning
# so that we get used to them

# puts and gets
#
# We're using the full Kernel.puts() and Kernal.gets()
# to emphasize their paths

# You do not have to do this in the work, 
# it's there to help develop knowledge

# Pseudocode is your friend 
# - it helps you load the problem into your brain before translating to syntax
# After you get the logical layer settled
# then you can dive into the syntactial programming language layer
#
# Given a collection of integers.
#
# Iterate through the collection one by one.
#   - save the first value as the starting value
#   - for each iteration, compare the saved value with the current value.
#   - if the saved value is greater, or it's the same
#       - move to the next value in the collection
#   - otherwise, if the current value is greater
#       - reassign the saved value as the current value
#
# After iterating through the collection, return the saved value.


# # Formal Pseudo-Code
# START = 'start of the program'
# SET = 'sets a variable we can use for later'
# GET = 'retrieve input from user'
# PRINT = 'displays output to user'
# READ = 'retrieve value from variable'
# IF = 'conditional logic branches'
# ELSEIF = IF
# ELSE = IF
# WHILE = 'show looping logic'
# THEEND = 'end of the program, END is a reserved word'

# Now you're ready to translate the formal pseudo-code into program pseudo-code
def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end

puts find_greatest([5, 8, 19, 34, 0, 3, 5, 5, 6, 9, 100])

# Another example

# Version 1
# while user wants to keep going
#   - ask the user for a collection of numbers
#   - extract the largest one from that collection and save it
#   - ask the user if they want to input another collection

# return saved list of numbers

# Version 2
# while user wants to keep going
#   - ask the user for a collection of numbers
#   - iterate through the collection one by one
#     - save the first value as the starting value
#     - for each iteration, compare the saved value with the current value
#     - if the saved value is greater, or it's the same
#       -  move to the next value in the collection
#     - otherwise, if the current value is greater
#       - reassign the saved value as the current value

#     - after iterating through the collection, save the largest value innto the list
#     - ask the user if they want to input another collection

#   return saved list of numbers

# Version 1 - Formal Pseudo-Code
# START

# SET large_numbers = []
# SET keep_going = true

# WHILE keep_going == true
#   GET "enter a collection"
#   SET collection
#   SET largest_number = SUBPROCESS "extract the largest one from te collection"
#   large_numbers.push(largest_number)
#   GET "enter another collection?"
#   IF "yes"
#     keep_going = true
#   ELSE
#     keep_going = false
#   IF keep_going == false
#     exit the loop

# PRINT large_numbers

# END

# Calculator pseudo-code
# Start very high level
- Get the first number
  - Make sure it's valid, otherwise, ask for another
- Get the second number
  - Make sure it's valid, otherwise, ask for another
- Get the operator
  - Make sure it's valid, otherwise, ask for another

- Perform operation on the two numbers
- Display result
- Ask if user wants to do another calculation