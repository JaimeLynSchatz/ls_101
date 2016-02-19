# calculator.rb
# Console app that accepts two numbers and
# an operator from the user
# Outputs to stdout the value

# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

# returns true if matches regexp for numerical value
# returns false otherwise
def valid_number?(num)
  num =~ /\-?\d+\.?\d*f?/
end

def operation_to_message(op)
  op_to_text = case op
               when '1'
                 'Adding'
               when '2'
                 'Subtracting'
               when '3'
                 'Multiplying'
               when '4'
                 'Dividing'
               end
  op_to_text
end

prompt "Wecome to Calculator! Enter your name:"

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name."
  else
    prompt "Hi, #{name}"
    break
  end
end

stop = ''
while stop != 'Y'
  number1 = ''
  loop do
    prompt "What's the first number?"
    number1 = gets.chomp

    if valid_number? number1
      prompt "The number is #{number1}!"
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  number2 = ''
  loop do
    prompt "what's the second number?"
    number2 = gets.chomp

    if valid_number? number2
      prompt "The numer is #{number2}!"
      break
    else
      prompt "Hmm... that doesn't look like a valid number"
    end
  end

  operator = ''
  prompt "What operation would you like to perform?\n\t1) add\n\t2) subtract\n\t3) multiply\n\t4) divide"
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include? operator
      break
    else
      prompt "Must choose 1, 2, 3 or 4"
    end
  end

  prompt operation_to_message operator

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  puts MESSAGES['result_message']

  prompt MESSAGES['quit_ask']
  stop = gets.chomp
end

p MESSAGES
