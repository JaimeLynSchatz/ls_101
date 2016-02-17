# calculator.rb
# Console app that accepts two numbers and
# an operator from the user
# Outputs to stdout the value

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts "Wecome to Calculator!"

puts "What's the first number?"
number1 = gets.chomp
puts "The number is #{number1}!"

puts "what's the second number?"
number2 = gets.chomp
puts "The numer is #{number2}!"

puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide?"
operator = gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
elsif operator == '4'
  result = number1.to_f / number2.to_f
end

puts "The result is #{result}"

