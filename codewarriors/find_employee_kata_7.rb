# You will be given an array of object literals holding the current employees of the company. You code must find the employee with the matching firstName and lastName and then return the role for that employee or if no employee is not found it should return "Does not work here!"

# The array is preloaded and can be referenced using the variable employees ($employees in Ruby). It uses the following structure.

$employees = [ 
  {'first_name'=> "Dipper", 'last_name'=> "Pines", 'role'=> "Boss"},
  {'first_name'=> "Dipper", 'last_name'=> "Peter", 'role'=> "Secretary"},
  {'first_name'=> "Alan", 'last_name'=> "Turing", 'role'=> "Mathematician"},
  {'first_name'=> "Ada", 'last_name'=> "Lovelace", 'role'=> "Computer Scientist"},
  {'first_name'=> "Grace", 'last_name'=> "Hopper", 'role'=> "Compiler Inventor"},
]





def find_employees_role(name)
  #your code here, array is called $employees
  result = $employees.select { |employee| name.split.first == employee['first_name'] && name.split.last == employee['last_name'] }
  return "Does not work here!" if result.empty?
  result.first['role']
end

p find_employees_role("Grace Hopper")
p find_employees_role("Jaime Schatz")

# assert_equals(find_employees_role("Dipper Pines"), "Does not work here!")
# Test.assert_equals(find_employees_role("Morty Smith"), "Truck Driver")
# Test.assert_equals(find_employees_role("Anna Bell"), "Admin")

def unused_digits *args
  # your code here
  all_digits = *('0'..'9')
  p (all_digits - args.join().split('')).join()
end

# some better solutions were
def unused_digits (*nums)
  "0123456789".delete(*nums.to_s)
end

def unused_digits(*args)
  (('0'..'9').to_a - args.join.chars).join
end


def days_until_christmas(day)
  (Date.new(day.year, 12, 25) - day).to_i
end

def day_and_time(mins)
  # There has got to be a better way than this
  clock_min = mins % 60
  hours = mins / 60
  clock_hour = hours % 24
  days = hours / 24
  clock_day = days / 7


end

day_and_time(0)       should return 'Sunday 00:00'
day_and_time(-3)      should return 'Saturday 23:57'
day_and_time(45)      should return 'Sunday 00:45'
day_and_time(759)     should return 'Sunday 12:39'
day_and_time(1236)    should return 'Sunday 20:36'
day_and_time(1447)    should return 'Monday 00:07'
day_and_time(7832)    should return 'Friday 10:32'
day_and_time(18876)   should return 'Saturday 02:36'
day_and_time(259180)  should return 'Thursday 23:40' 
day_and_time(-349000) should return 'Tuesday 15:20'
