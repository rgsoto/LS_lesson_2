#VALID_CHOICES = %w(rock paper scissors lizzard spock)
VALID_CHOICES = %w(r p s l sp)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'r' && second == 's') ||
    (first == 'p' && second == 'r') ||
    (first == 's' && second == 'p') ||
    (first == 'r' && second == 'l') ||
    (first == 'l' && second == 'sp') ||
    (first == 'sp' && second == 's') ||
    (first == 's' && second == 'l') ||
    (first == 'p' && second == 'sp') ||
    (first == 'sp' && second == 'r')
  end


def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def score(player, computer)
  if display_results(player) > 5
    prompt "Here's your score"
  elsif display_results(computer).count > 5
    prompt "Computer score"
  end
end


loop do
  choice = ''
  loop do
    prompt("Choose one: r for rock, p for paper, s for scissors, l for lizzard, and sp for spock!")
    #prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")


  display_results(choice, computer_choice)
  #score(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing, good bye")
