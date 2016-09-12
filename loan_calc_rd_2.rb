# three pieces of info from the user
# 1: Loan info (from the user) (need a variable)
# 2: APR - Also from the user (floats?)
# 3: loan duration - same thing (months vs years?)
# -----------What I need to do -----------------
# month interest rate - See formulae
# loan duration in months

def prompt(message)
  Kernel.puts("=> #{message} ")
end

loop do
  prompt("Welcome to the loan calc! What's your name? ")
  name = Kernel.gets().chomp()

  prompt("------------------------")

  prompt("Hi #{name}! What's your loan amount? ")
  #loan_amount = Kernel.gets().chomp().to_i

  loan_amount = ''
  loop do
    loan_amount = Kernel.gets().chomp

    if loan_amount.empty?() || amount.to_f() < 0
      prompt("Must enter a positive number. ")
    else
      break
    end
  end

  prompt("Thanks! Now what's your interest rate? ")
  #interest = Kernel.gets().chomp().to_i.to_f #need it in months!
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  interest = ''
  loop do
    interest = Kernel.gets().chomp()

    if interest.empty?() || interest.to_f

  prompt("All right, last piece of info, what's your loan duration? ")
  loan_duration = Kernel.gets().chomp().to_i

  monthly_i = interest / 12

  monthly_payment = loan_amount * (monthly_i / (1 - (1 + monthly_i)** - loan_duration))

  prompt("Your monthly payment is #{monthly_payment}")

