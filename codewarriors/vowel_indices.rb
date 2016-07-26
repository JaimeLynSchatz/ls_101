def vowel_indices(word)
  arr = word.downcase.split('')
  arr.each_index.select { |i| %(a e i o u).include?(arr[i]) }
end

p vowel_indices("super")
p vowel_indices("apple")
p vowel_indices("keep")