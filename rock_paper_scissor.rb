def prompt(message)
  Kernel.puts("=> message")
end

prompt("Choose one: rock, paper, scissors")
choice = Kernel.gets().chomp()

computer_choice = ['rock', 'paper', 'scissors'].sample


