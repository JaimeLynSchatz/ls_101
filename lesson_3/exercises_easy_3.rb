# Question 1
# Show an easier way to write this array
# flintstones = ['Fred', 'Barney', 'Wilma', 'Betty', 'BamBam', 'Pebbles']
flintstones = %w(Fred Barney Wilma Betty BabBam Pebbles)

############
# Question 2
# How can we ad the family pet "Dino" to our usual array:
# already assigned - flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push(%(Dino))
p flintstones
flintstones.pop

# better way
flintstones << 'Dino'

flintstones.pop

############
# Question 3
# How can you add multiple items to an array?
flintstones.push('Dino').push('Hoppy')
p flintstones

############
# Question 4
# Shorten this sentence by removing everything starting from "house"
advice = 'Few things in life are as important as house training your dino'
rvalue = advice.slice!(0...advice.index('house'))
p rvalue
p advice

# If you only use slice, you don't change the caller

############
# Question 5
# Write a one-liner to count the number of lower-case 't' characters in the
# following string:
statement = 'The Flintstones Rock!'
puts "number of t's #{statement.scan('t').count}"

############
# Question 6
# If we had a 40 char wide table of Flintstone family members
# how could we easily ceter that title above the table
# with spaces?
title = "Flintstone Family Members"
title.center(40)
puts title.center(40)
puts title
