def xor(a, b)
  (a && !b) || (!b && a)
end
mv

def opposite n
  -n # I originally used n * (-1)
end

def DNA_strand dna
  # I used a hash, there's a string method, though .tr
  dna.tr('ATGC', 'TACG')
end

def likes names
  case names.size
  when 0
    "no one likes this"
  when 1
    "%s likes this", % names
  when 2
    "%s and %s like this", % names
  when 3
    "%s, %s and % like this", % names
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end

# next up is the palindrome finder

def longest_palindrome s
  #your code here
  length = s.length
  return length if length < 2
  
  
  
end

rotations =  split_string.each_with_index.map { |c, i| split_string.rotate(i) }
# then compare the two strings with 
(rotations.uniq - rotations2.uniq).empty? # if all of rotations is within rot2, then it's empty


# Given a year, returns the number of Friday the 13ths in that year
# require 'Date' and use Date::GREGORIAN as the fourth argument to Date.new
def friday_13(year)
  (1...12).each.map { |month| Date.new(year, month, 13, Date::GREGORIAN).strftime("%A") }.select { |day| day == "Friday" }.count
end

p friday_13(1586)
p friday_13(1001)
p friday_13(2819)

# Another solution
# def unlucky_days(year)
#   (1..12).reduce(0) do |sum, m|
#     sum += 1 if Date.new(year, m, 13, Date::GREGORIAN).friday?
#     sum
#   end
# end

# est.assert_equals(unlucky_days(1586), 1, "should be: 1")
# Test.assert_equals(unlucky_days(1001), 3, "should be: 3")
# Test.assert_equals(unlucky_days(2819), 2, "should be: 2")
# Test.assert_equals(unlucky_days(2792), 2, "should be: 2")
# Test.assert_equals(unlucky_days(2723), 2, "should be: 2")
# Test.assert_equals(unlucky_days(1909), 1, "should be: 1")
# Test.assert_equals(unlucky_days(1812), 2, "should be: 2")
# Test.assert_equals(unlucky_days(1618), 2, "should be: 2")
# Test.assert_equals(unlucky_days(2132), 1, "should be: 1")
# Test.assert_equals(unlucky_days(2065), 3, "should be: 3")

def openOrSenior(data)
  data.each.map { |prospect| (prospect.first > 54 && prospect.last > 7) ? "Senior" : "Open" }
end

# I like this one, it names the variables
# def openOrSenior(data)
#   data.map { |age, handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }
# end
