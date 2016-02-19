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
  n = calculate_n_months(loan_duration)

  wiki_payment = monthly_rate * loan_amount / (1 - (1 + monthly_rate)**-n)
  puts "For a loan of #{loan_amount}, an APR of #{apr} over #{loan_duration} years,"
  puts "You'll make #{n} monthly payments of #{wiki_payment.round(2)} each"
end

puts "*****************"
puts "\n"
mortgage_calculator(200_000, 0.065, 30)
puts "\n"
puts "*****************"
mortgage_calculator(100_000, 0.05, 20)
puts "\n"
puts "*****************"
mortgage_calculator(200_000, 0.05, 20)
puts "\n"
puts "*****************"
mortgage_calculator(100_000, 0.05, 10)
puts "\n"
puts "*****************"
mortgage_calculator(100_000, 0.10, 20)
