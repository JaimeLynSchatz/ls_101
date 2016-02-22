# rps.rb

VALID_CHOICES = %w(rock paper scissors).freeze

def test_method
  prompt('test message')
end

# test_method

def prompt(message)
  Kernel.puts("=> #{message}")
end

test_method

def win?(first, second)
  (first == 'rock' && second == 'scossors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def choose_winner(choice, computer_choice)
  if choice == computer_choice
    "It's a tie!"
  elsif win?(choice, computer_choice)
    "You won!"
  else
    "You lost!"
  end
end

def user_choice
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

loop do
  choice = user_choice
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  prompt choose_winner(choice, computer_choice)

  prompt("Would you like to play again?")
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end
