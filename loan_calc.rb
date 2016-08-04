 # variable decleration

def prompt(message)
   Kernel.puts("=> #{message}")
end

# def apr(num)
#  num.to_i.to_f
#end

#cdef loan_amount(num)
  #num.to_i
# end

# def loan_duration(num)
  # num.to_i
# end

def valid_number?(num)
  num.to_i #.nonzero? # check to see if this breaks my app
end

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
  loan = Kernel.gets().chomp()
  if valid_number?(loan_amount)
    break
  else 
    prompt("Hmm that doesn't look like a valid number")
  end
end

apr = ''

loop do
  prompt("What's your APR?")
  apr = Kernel.gets().chomp
  if valid_number?(apr)
    break
  else
    prompt("Hmm that doesn't look like a vaid number")
  end
end

loan_duration = ''
loop do
  prompt("What's your loan duration?")
  loan_duration = Kernel.gets().chomp
  if valid_number?(loan_duration)
    break
  else
    prompt("Hmm that doesn't look like a valid number")
  end
end

monthly_payment = loan_amount * ( apr / (1 - (1 + apr) ** - loan_duration))

p monthly_payment

# need to convert APR to a monthly rate. 
# GET user input and divide by 12 so interest_rate(variable)/12 









