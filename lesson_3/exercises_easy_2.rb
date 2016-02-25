# Question 1
# In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if there is an age present for "Spot"
# Bonus: what are two other hash methods that would work just as well for this solution?

puts ages.key?("Spot")

# Had to look these us
puts ages.include?("Spot")
puts ages.member?("Spot")


# Question 2
# Add up all the ages from our current Muster family hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

sum_ages = 0
ages.each { |age| sum_ages += age[1] }
puts sum_ages

ages.values.inject(:+)


# Question 3
# throw out people 100 and older
ages.keep_if { |name, age| age < 100 }


# Question 4
# Starting with this string:
munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase

puts ages
ages["Grandpa"] = 5432
puts ages

additional_ages = { "Marily" => 22, "Spot" => 237 }
ages = ages.merge(additional_ages)
puts ages


# Question 6
# Pick out the minimum age from our current Munster family hash
puts ages.min[1]


# Question 7
# SEe if the name "Dino" appears in the string below
advice = "Few things in life are as important as house training your pet dinosaur"
p advice.index("Dino")


# Question 8
# In the array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# find the index of the first name that starts with "Be"
p flintstones.index.starts_with("Be")