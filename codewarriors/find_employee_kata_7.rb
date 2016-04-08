You will be given an array of object literals holding the current employees of the company. You code must find the employee with the matching firstName and lastName and then return the role for that employee or if no employee is not found it should return "Does not work here!"

The array is preloaded and can be referenced using the variable employees ($employees in Ruby). It uses the following structure.

employees = [ {'first_name'=> "Dipper", 'last_name'=> "Pines", 'role'=> "Boss"},


def find_employees_role(name)
  #your code here, array is called $employees
  return "Does not work here!" if $employees[name.split(' ').first] != name.split(' ')[1]
  $employees
  
end

Test.assert_equals(find_employees_role("Dipper Pines"), "Does not work here!")
Test.assert_equals(find_employees_role("Morty Smith"), "Truck Driver")
Test.assert_equals(find_employees_role("Anna Bell"), "Admin")
