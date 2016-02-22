# coding_tips_2.rb

# The Art of Newlines

#bad code new lines - hulk sad
name = ''
puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again:"
end
puts "Welcome #{name}!"
puts "What would you like to do?"

# better
name = ''

puts "Enter your name: "
loop do
  name = gets.chomp
  break unless name.empty?
  puts "That's an invalid name. Try again:"
end

puts "Welcome #{name}!"
puts "What would you like to do?"


# To side effect or return or both
# Lesson: stay away from both - just pick one

# side effect: displays something to the output
# returns: nil
def total(num1, num2)
  puts num1 + num2
end

# side effect: mutates the passed-in array
# returns: updated array
def append(target_array, value_to_append)
  target_array << value_to_append
end

# side effect: none
# returns: new integer
def total(num1, num2)
  num1 + num2
end


# Name methods appropriately

def display_something
  # make something pretty looking
  # and display it
end

def verb
  # do that verb
end

words = %w(scooby doo on channel two)
words.each {|str| puts str}

words = %w(scooby do on channel two)
wors.each {|str| str << '!'}
puts words.inspect

# just don't mutate the collection while iterating
# thigs get weird and unexpected
words = %w(scooby doo on channel two)
words.each {|str| words.delete(str)}
puts words.inspect  # => ["doo", "channel"], not an empty array


# variable shadowing
name = 'johnson'

['kim', 'joe', 'sam'].each do |name|
  # uh oh, we cannot access "name"
  puts "#{name} #{name}"
end

# not variable shadowing
name = 'johnson'

['kim', 'joe', 'sam'].each do |fname|
  name = fname
end

# watch your block variables: |block_variable|


# Don't assign when you mean to evaluate

# bad bad bad bad bad
if some_variable = get_a_value_from_somewhere
  puts some_variable
end

# good
if some_variable == get_a_value_from_somewhere
  puts some_variable
end


# use _ for unused parameters
names = ['kim', 'joe', 'sam']
names.each { |_| puts "got a name!" }

names.each_with_index do |_, index|
  puts "#{index+1}. Got a name!"
end


# Gain experience through struggling
# Make mistakes and learn from them
# lean in to the struggle and learn from it
# You'll build your muscle memory and mental memory better that way



