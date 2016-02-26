# Question 1: Figure out the total age of just the male members
munsters = {
  'Herman' => {'age' => 32, 'gender' => 'male' },
  'Lily' => { 'age' => 30, 'gender' => 'female' },
  'Grandpa' => { 'age' => 402, 'gender' => 'male' },
  'Eddie' => { 'age' => 10, 'gender' => 'male' }
}

total_age = 0
munsters.each do |munster|
  if munster[1]["gender"] == 'male'
    total_age += munster[1]["age"]
  end
  p total_age
end

# OR Can be written like this:
total_male_age = 0
munsters.each do |name, details| # this represents the two element array returned
  total_male_age += details['age'] if details['gender'] == 'male'
end

############
# Question: Strung substitution - print name, age and gender of each fam members
# in form: (Name) is a (age) year old (male/female).

munsters = {
  'Herman' => { 'age' => 32, 'gender' => 'male' },
  'Lily' => { 'age' => 30, 'gender' => 'female' },
  'Grandpa' => { 'age' => 402, 'gender' => 'male' },
  'Eddie' => { 'age' => 10, 'gender' => 'male' },
  'Marilyn' => { 'age' => 23, 'gender' => 'female' }
}

munsters.each do |name, details|
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end

#############
# Question 3:
# Refactor this code to make the code easier to predict and easier to maintain
def tricky_method(a_string_param, an_array_param)
  a_string_param += 'rutabaga'
  an_array_param << 'rutabaga'
end

my_string = 'pumpkins'
my_array = ['pumpkins']
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

def less_tricky_method(a_string_param, an_array_param)
  #return the value, don't just modify the caller
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = less_tricky_method(my_string, my_array)

############
# Question 4:
# break up this sentence and put it back with words in reverse order
sentence = "Humpty Dumpty sat on a wall."
tens = sentence.split.reverse.join(' ')
p tens

############
# Question 5: What's the output?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# => 42 - 8 or 34

#############
# Question 6:
munsters = {
  'Herman' => { 'age' => 32, 'gender' => 'male' },
  'Lily' => { 'age' => 30, 'gender' => 'female' },
  'Grandpa' => { 'age' => 402, 'gender' => 'male' },
  'Eddie' => { 'age' => 10, 'gender' => 'male' },
  'Marilyn' => { 'age' => 23, 'gender' => 'female' }
}

def mess_with_demographics(demo_hash)
  p demo_hash
  demo_hash.values.each do |family_member|
    family_member['age'] += 42
    family_member['gender'] = 'other'
  end
end

mess_with_demographics(munsters)
p munsters
# Yep, the munsters are in trouble. The param is sent as a pointer
# Their data is toasted

#############
# Question: 7 Method calls and expressions as arguments
def rps(fist1, fist2)
  if fist1 == 'rock'
    (fist2 == 'paper') ? 'paper' : 'rock'
  elsif fist1 == 'paper'
    (fist2 == 'scissors') ? 'scissors' : 'paper'
  else
    (fist2 == 'rock') ? 'rock' : 'scissors'
  end
end

# What is the result of the following call?
puts rps(rps(rps('rock', 'paper'), rps('rock', 'scissors')), 'rock')
# => I expect paper

#############
# Question 8: Consider these two methods
def foo(param = 'no')
  'yes'
end

def bar(param = 'no')
  param == 'no' ? 'yes' : 'no'
end

# What would be the outpus of
p bar(foo)
#=> I expect 'no'