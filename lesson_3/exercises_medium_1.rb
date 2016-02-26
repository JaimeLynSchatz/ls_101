# Question 1: Write a one-line program that creates the following
# output 10 times, with the subsequent one-line
# indented one space to the right

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times { |n| puts ' ' * n + 'The Flintstones Rock!' }

#############
# Question 2: Create a hash that expresses the frequesncy
# with which each letter occurs in this string:
statement = 'The Flintstones Rock!'

letter_frequency = {}
statement.split('').each do |c|
  letter_frequency.key?(c) ? letter_frequency[c] += 1 : letter_frequency[c] = 1
end

p letter_frequency

#############
# Question 3: This will yield an error:
# puts "the value of 40 + 2 is " + (40 + 2)
# becuase you can't implicitly convert int to string
puts 'the value of 40 + 2 is ' + (40 + 2).to_s
# OR
puts "the value of 40 + 2 is #{40 + 2}"


#############
# Question 4: What happens when we modfy an array while
# we are iterating over it? What would be the output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p numbers
  p number
  numbers.shift(1)
  p numbers
end

puts "I think it said 1" # I was wrong - it's 1 then 3

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

puts "I think it said 1 then 2" # right that time

#############
# Question 5: Alan wrote the following method, which was intended
# to show all of the factors of the input number
def factors(number)
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

# re-write so that it works and fails gracefully for negative numbers or 0
def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    # add to divisors list if there's no remainder
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors # return the divisors
end

p factors(5)
p factors(10)
p factors(16)
p factors(24)

#############
# Question 6: Alyssa was asked to write an implementation of a 
# rolling buffer. Elements were added to the rolling buffer and
# if the buffer becomes full, then new elements that are added
# will displace the oldest elements in the buffer.
# She wrote two implementations. Is there a difference in behavior?
def rolling_buffer(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# rolling_buffer2 isn't modifying the caller or the input argument
# rolling_buffer should be rolling_buffer!

#############
# Question 7: Alyssa asked Ben to write a Fibonacci calculator
# A user passes in two numbers and the calculator will keep computing
# the sequence until some limit is reached

# Find the error
limit = 15 # won't ever find this

def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum 
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

words = "This is the song that never ENDS" # this may not work. My way almost works"
words.split.map { |word| word.capitalize }.join(' ')
#############
# Question 8: Write a version of titleize! that
# creates a string with each word caplitalized as it would
# be in a title

# def titleize(str)
#   p "Start : #{str}"
#   exceptions = %w(a an the to for and nor by down with but yet or so of)
#   str.downcase!
#   p "After downcase: #{str}"
#   p "***"
#   str.split(' ').each_with_index do |word, index|
#     # p "index for #{word} #{index}"
#     if exceptions.include?(word)
#       str.sub!(word, word.downcase)
#       p "After exception #{word}: #{str}"
#       p "***"
#       # p "exceptions replaced for #{word}: #{str.sub(word + ' ', word.downcase + ' ')}"
#     else
#       str.gsub!(word, word.capitalize)
#       p "After capitalize #{index}: #{str}" # breaks here because it matches the first instance, not this one
#       p "***"
#     end
#     if word == str.split.first || word == str.split.last
#     #if (index == 0) || (index == (str.length - 1))
#       str.sub!(word, word.capitalize)
#       p "After first and last: #{word}, #{str}"
#       p "*************************************"
#     end
#   end
#   str
# end

# p titleize("This is the song that never ends")
# # p titleize("Jaime LYN SChatz")
# # p titleize("will this even work? I don't no know")
# # p titleize("maybE")

# merge this with the titleize section after you push up

#############
# Question 8: Given the Munsters hash below
munsters = {
  'Herman' => { 'age' => 32, 'gender' => 'male' },
  'Lily' => { 'age' => 30, 'gender' => 'female' },
  'Grandpa' => { 'age' => 402, 'gender' => 'male' },
  'Eddie' => { 'age' => 10, 'gender' => 'male' },
  'Marilyn' => { 'age' => 23, 'gender' => 'female' }
}

# Modify the hash such that each member of the Munster family
# has an additional "age_group" key that has one of the
# three values describing the family member is in
# (kid, adult, senio)

# kid 0 - 17, adult 18-64, senior 65+
# 'Herman' => { 'age' => 32, 'gender' => 'male', 'age_group' => 'adult' }

munsters.each do |munster, listing|
  age = listing['age']
  case age
  when 0..17
    listing['age_group'] = 'kid'
  when 18..64
    listing['age_group'] = 'adult'
  when 65..999
    listing['age_group'] = 'senior'
  end
end

p munsters