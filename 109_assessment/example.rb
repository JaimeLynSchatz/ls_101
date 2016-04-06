# The program will first randomly pick a number between 1 and 100. The program will then ask the user to guess the number. If the user guesses correctly, the program will end. If the user guessed too high or low, the program will respond with "Your number is to high" or "Your number is to low" respectively, and allow the user to guess again. After finally guessing the number, the program will display how many guesses the user took to guess the number.

num = rand(1...100)
# TODO: refactor to loop
puts 'Guess a number between 1 and 100'
guess = gets.chomp.to_i
tries = 1
while (guess != num)
  if guess > num
    puts 'Your number is too high'
  else
    puts 'Your number is too low'
  end
  puts 'Guess again'
  guess = gets.chomp.to_i
  tries += 1
end
puts "You got it in #{tries} tries!"
