#Variables and Blocks

[1, 2, 3].each do |num|
  puts num
end

# variables initialized in an outer scope can be accessed in an inner scope, but not vice versa

# Example 1
a = 1         # outer scope variable

loop 3        # the block creates an inner scope
  puts a      # => 1
  a = a + 1   # "a" is re-assigned to a new value
  break       # necessary to prevent an infinite loop
end

puts a        # => 2 "a" was reassigned in the inner loop


# Example 2
loop do       # the block creates an inner scope
  b = 1
  break
end

puts b        # => NameError: undefined ....


# Example 3
2.times do
  a = 'hi'
  puts a      # 'hi' <= this will be printed out twice due to the .times
end

loop do
  puts a      # => NameError: undefined local variable ...
  break
end

puts a        # => NameError: undefined local variable


# Example 4
a = 1         # first level variable

loop do       # second level
  b = 2

  loop do     # third level
    c = 3
    puts a    # => 1
    puts b    # => 2
    puts c    # => 3
    break
  end

  puts a      # => 1
  puts b      # => 2
  puts c      # => NameError
  break

end

puts a        # => 1
puts b        # => NameError
puts c        # => NameError


# Example 5: Variable Shadowing
n = 10

[1, 2, 3].each do |n|   # New n!
  puts n
  n = 11
end

puts n   # => 10


# Variables and Methods

# Example 1: Methods can't access variables in another scope
a = 'hi'

def some_method
  puts a
end

some_method  # => undefined a


# Example 2: Methods can access objects passed in
def some_method(a)
  puts a
end

some_method(5)  # => 5


# Blocks and Methods
def some_method
  a = 1
  5.times do
    puts a
    b = 2
  end

  puts a
  puts b
end

some_method  # => NameError: undefined variable b


# Constants
# constants scope like globals

USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate # => Logging in Batman

FAVORITE_COLOR = 'taupe'

1.times do
  puts "I love #{FAVORITE_COLOR}!"  # => I love tauupe!
end

loop do
  MY_TEAM = "Phoenix Suns"
  break
end

puts MY_TEAM  # => Phoenix Sun

# Constants have lexical scope 

