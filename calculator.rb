# I ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i().nonzero?
end

def integer?(input)
  num.to_i.to_s == num
end

def number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end

  puts("Hi")

end

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  number1 = ''
  loop do
    prompt("Whats the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Something is wrong")
    end
  end

  number2 = ''
  loop do
    prompt("Whats the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmmm...that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation do you want to perform?
      1. Add
      2. Subtract
      3. Multiply
      4. Divide
    MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1 2 3 or 4 ")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
  end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to caculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")
