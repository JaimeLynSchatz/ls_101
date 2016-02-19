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
  dividend = ( 1 + monthly_rate )**n -1
  #dividend = dividend**n - 1
  divisor = monthly_rate * ( ( 1 + monthly_rate)**n - 1 )
  #divisor = divisor**n - 1
  #divisor = monthly_rate * divisor
  p = loan_amount * divisor / dividend
  # p = loan_amount( monthly_rate ( 1 + monthly_rate )**n ) / ( ( 1 + monthly_rate )**n - 1 )

  puts "For a loan of #{loan_amount}, an APR of #{apr} over #{loan_duration} years,"
  puts "You'll make #{n} monthly payments of #{p} each"
end

mortgage_calculator(100_000, 0.05, 20)
mortgage_calculator(200_000, 0.05, 20)
mortgage_calculator(100_000, 0.05, 10)
mortgage_calculator(100_000, 0.10, 20)
