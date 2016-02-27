# Question 1:
# What happens when `greeting` is referenced in the last line?

if false
  greeting = 'hello world'
end

greeting # => will be whatever greeting was before the if block

# trick question - in an if block, it's nil

#############
# Question 2: What's the result of the last line?

greetings = { a: 'hi' }
p "#{greetings} = { a: 'hi' }"
informal_greeting = greetings[:a]
p "#{informal_greeting} = #{greetings[:a]}"
informal_greeting << ' there'
p "#{informal_greeting} << ' there'"

puts informal_greeting # => "hi there"
puts informal_greeting.object_id
puts greetings
puts greetings.object_id

# => hi there (it's a reference!! and << modified the caller)

#############
# Question: 3 - What will be printed by each of these code groups?
# A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)
puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# unchanged

# B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is #{one}"
puts "two is #{two}"
puts "three is: #{three}"

# unchanged

# 3)
def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is #{three}"

# => it's the ! so one is two, two is three, three is one

#############
# Quesion 4: Write a method that returns one UUID with
# 32 hex chars, broken into 5 sections of
# 8-4-4-4-12, represented as a string

def new_uuid
  def rand_hex
    rand(0x0..0xf).to_s(16)
  end

  def push_hexes!(str, n)
    n.times { str << rand_hex }
  end

  uuid_string = ""
  push_hexes!(uuid_string, 8)
  uuid_string << '-'
  3.times do
    push_hexes!(uuid_string, 4)
    uuid_string << '-'
  end
  push_hexes!(uuid_string, 12)

  uuid_string
end

#############
# Question 5: Re-write to return false condition
# and to check for more or fewer components
# def dot_separated_id_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   while dot_separated_words.size > 0 do
#     word = dot_separted_words.pop
#     break if !is_a_number?(word)
#   end
#   return true
# end

def is_a_number?(n)
  true if Float(n) rescue false
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size != 4
    false
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if !is_a_number?(word)
      false
    end
  end
  true
end

p dot_separated_ip_address?("1.2.3.4")
p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("1.2.3.4.5")
p dot_separated_ip_address?("1.2.3")
p dot_separated_ip_address?("1.2.r.4")
