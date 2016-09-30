VALID_CHOICES = %w(rock paper scissors lizard spock)
# VALID_CHOICES = %w(r p s l sp)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def rock_win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard')
end

def paper_win?(first, second)
  (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock')
end

def scissors_win?(first, second)
  (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard')
end

def spock_win?(first, second)
  (first == 'spock' && second == 'rock') ||
    (first == 'spock' && second == 'scissors')
end

def lizard_win?(first, second)
  (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper')
end

def win?(first, second)
  rock_win?(first, second) ||
    paper_win?(first, second) ||
    scissors_win?(first, second) ||
    lizard_win?(first, second) ||
    spock_win?(first, second)
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

choice = ''
player_score = ''
computer_score = ''

def short_vesion_choice(word)
  case word
  when 'r' then 'rock'
  when 'p' then 'paper'
  when 's' then 'scissors'
  when 'l' then 'lizard'
  when 'sp' then 'spock'
  end
end

player_score = 0
computer_score = 0
round_tie_score = 0

loop do
  loop do
    player_choice_prompt = <<-MSG
      Choose one:
        r for rock
        p for paper
        sc for scissors
        l for lizard
        sp for spock
    MSG
    prompt(player_choice_prompt)
    choice = short_vesion_choice(gets.chomp)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  else
    round_tie_score += 1
  end

  prompt("Your score is #{player_score}")
  prompt("Computer score is #{computer_score}")
  break if player_score + computer_score + round_tie_score == 5
  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

if player_score > computer_score
  prompt("You won the game with #{player_score} in best of
  #{player_score + computer_score + round_tie_score} rounds.")
elsif computer_score > player_score
  prompt("The computer won the game with #{computer_score} in best of
    #{player_score + computer_score + round_tie_score} rounds.")
else
  prompt("The game was tied #{player_score} - #{computer_score}")
end

prompt("Thank you for playing, good bye")
