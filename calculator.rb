# Command line calculator 
# asks the user for two numbers
# Asks the user what operation they would like to perform -add,subtract, multiply, divide
# print/output result

#answer = Kernel.gets()
#Kernel.puts (answer)

def prompt(message)
  Kernel.puts("=> #{message}")
end 

prompt("Welcome to the calculator!")

prompt("What's the first number?")
number1 = Kernel.gets().chomp()

prompt("What's the second number?")
number2 = Kernel.gets().chomp()

prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide ")
operator = Kernel.gets().chomp()

result = case operator 
         when '1'
          number1.to_i() + number2.to_i()
         when '2'
          number1.to_i() - number2.to_i()
         when '3'
          number1.to_i() * number2.to_i()
         when '4'
          number1.to_f / number2.to_f  
        end 

prompt("The resilt is #{result}")

