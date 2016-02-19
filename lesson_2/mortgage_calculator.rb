# Mortgage Calculator
# Accepts: the loan amount,
# the Annual Percentage Rate (APR),
# the loan duration
#
# Calculate Two Things:
# monthly interest rate, loan duration in months

# P = L[c(1 + c)**n]/(1 + c)**n - 1]
# Where P is the monthly payment, L is the loan
# n is the number of months
# c is the monthly interest rate

def calculate_n_months(loan_duration)
  12 * loan_duration
end

def calculate_monthly_rate(apr)
  apr / 12
end

def mortgage_calculator(loan_amount, apr, loan_duration)
  # P = loan_amount(c( 1 + c)**loan_duration*12)/((1 + c)**n - 1)

  monthly_rate = calculate_monthly_rate(apr)
  puts "Monthly rate of #{monthly_rate} of #{apr} APR"
  n = calculate_n_months(loan_duration)
  puts "#{n} months for #{loan_duration} years"
  dividend = ( 1 + monthly_rate )**n -1
  puts "1 + monthly_rate = #{1 + monthly_rate}"
  puts "then to the #{n} power = #{(1 + monthly_rate)**n}"
  puts "minus 1 = #{dividend}?"
  #dividend = dividend**n - 1
  divisor = monthly_rate * ( ( 1 + monthly_rate)**n - 1 )
  #divisor = divisor**n - 1
  #divisor = monthly_rate * divisor
  p = loan_amount * divisor / dividend
  # p = loan_amount( monthly_rate ( 1 + monthly_rate )**n ) / ( ( 1 + monthly_rate )**n - 1 )

  puts "For a loan of #{loan_amount}, an APR of #{apr} over #{loan_duration} years,"
  puts "You'll make #{n} monthly payments of #{p} each"
end

puts "*****************"
puts "\n"
mortgage_calculator(400_000, 0.035, 30)
puts "\n"
puts "*****************"
#mortgage_calculator(100_000, 0.05, 20)
#mortgage_calculator(200_000, 0.05, 20)
#mortgage_calculator(100_000, 0.05, 10)
#mortgage_calculator(100_000, 0.10, 20)
