# Question 1:
# What happens when `greeting` is referenced in the last line?

if false
  greeting = 'hello world'
end

greeting # => will be whatever greeting was before the if block

# trick question - in an if block, it's nil

#############
# Question 2:
greetings = { a: 'a' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => "hi there"
puts greetings
