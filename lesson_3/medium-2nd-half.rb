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