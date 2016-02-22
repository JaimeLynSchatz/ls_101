# pass_by_ref_or_value.rb 

# When an operation within the method mutates the caller,
# it will affect the original object


def change_name(name)
  puts name
  name = 'bob'
  puts name
end

name = 'jim'
change_name(name)
puts name

def cap(str)
  new_str = str.capitalize
  puts new_str
end

name = 'jim'
cap(name)
puts name

def add_name(arr, name)
  arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect

def add_name(arr, name)
  arr == arr << name
end

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect

