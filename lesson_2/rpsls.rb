# rpsls.rb

DEFEATS = {
  'rock' => %w(scissors, lizard),
  'paper' => %w(spock rock),
  'scissors' => %w(paper lizard),
  'lizard' => %w(paper spock),
  'spock' => %w(rock scissors)
}.freeze

ABBRV = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}.freeze

VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  DEFEATS[first].include? second
end

def increment_winner(winner_score)
  winner_score += 1
end

def choose_winner(choice, computer_choice)
  if choice == computer_choice
    "It's a tie!"
  elsif win?(choice, computer_choice)
    "You won!"
    increment_winner(user_score)
  else
    "You lost!"
    increment_winner(computer_score)
  end
end

def user_choice
  choice = ''
  user_score = 0
  computer_score = 0
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice) || ABBRV.key?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

loop do
  choice = user_choice
  choice = ABBRV[choice] if choice.length <= 2
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  prompt choose_winner(choice, computer_choice)

  if user_score == 5
    prompt("You five times!")
  elsif computer_score == 5
    prompt("Too bad, the computer won five times!")
  end

  prompt("Would you like to play again?")
  play_again = gets.chomp
  break unless play_again.downcase.start_with?('y')
end
