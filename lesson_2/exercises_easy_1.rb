# Question 1
# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Output
# 1
# 2
# 3


# Question 2
# Describe the difference between ! and ? in Ruby.

# 1. What is != and where should you use it?
# != means not equal to. The ! negates what you put it
# in front of. You use it in evaluations
# Ex: 
true != false # (which evalutes to true)

# 2. put ! before something
truth= true
cake = !truth # means the cake is a lie, I suppose

# 3. put ! after something
# a ! after something (like a method) means it's destructive
arr = [1, 2, 3, nil, 4, 5]
arr.compact # => returns [1, 2, 3, 4, 5], leaves arr
arr.compact! # => modifies arr to [1, 2, 3, 4, 5]

# 4. put ? before something
# I get an error -- unexpected '?'

# 5. put ? after something
# conditional method
# like include?
arr.include?(3) # => true

# 6. put !! before something, likfe after user_name
# means not not
name = 'Jaime'
name == true # => true
!name == true # => false
!!name == true # => true
!!!name == true # => false
# etc.


# Question 3
# Replace the word "important with "urgent in this string:
advice = "Few things in life are as important as house training your pet dinosaur."
advice = advice[0, advice.index('important')] + "urgent" + advice[advice.index('important') + important.length - 1]
