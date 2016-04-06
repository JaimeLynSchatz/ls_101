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