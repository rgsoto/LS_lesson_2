# variable decleration

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def apr(num)
# num.to_i.to_f
# end

# def loan_amount(num)
# num.to_i
# end

# def loan_duration(num)
# num.to_i
# end

#def valid_number?(num)
 # num.to_i #.nonzero? # check to see if this breaks my app
#end

prompt("Welcome to the mortage calculator! What's your name? ")

name = ''

loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure you enver a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loan_amount = ''
loop do
  prompt("What's your loan amount?")
  
  loan_amount = Kernel.gets().chomp()
  
  if loan_amount.empty?() || loan_amount.to_f() < 0
    prompt("Hmm...please enter a positive number")
  else 
    break
  end
end

loan_duration = ''
loop do
  prompt("What's your loan duration in years?")
  loan_duration = Kernel.gets().chomp
  
  if loan_duration.empty?() || loan_duration.to_i() < 0
    prompt("Hmm that doesn't look like a valid number")
  else
    break
  end
end

apr = ''

loop do
  prompt("What's your interest rate?")
  apr = Kernel.gets().chomp
  
  if apr.empty?() || apr.to_f() < 0
    prompt("Hmm...that doesn't look like a positive number")
  else
    break
    end
end

annual_interest_rate = apr.to_f() / 100 
monthly_interst_rate = annual_interest_rate / 12
months = loan_duration.to_i() * 12 


monthly_payment = loan_amount.to_f * 
                  (monthly_interst_rate / 
                  (1 - (1 + monthly_interst_rate)** - months.to_i()))


prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

# need to convert APR to a monthly rate.
# GET user input and divide by 12 so interest_rate(variable)/12








