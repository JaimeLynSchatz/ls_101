#Save Time With the Right Rules

##Use Meaningful Names
It's so worth it to use this:

`privacy_option = gets.chomp`

over

`p = gets.chomp`

Capture the intent of the variable

Exceptions: for variables that don't live outside a very small scope (hence: i for index, etc.)

##Mutating Constants - Just Say NO
Treat constants like they're immutable

##Methods
Methods should do ONE thing. If you're longer than around 10-15 lines, you're probably doing it wrong.

1. Either display output or return something -- NOT BOTH
2. Either return with no side effects or ONLY perform side effects and don't return (!! mark items with side effects)
3. Don't say "return_total", just say "total"
3.5. `update_total` clearly updates the total
4. Total should return a total (not also modify cards[])

##Methods Should Have Same Level of Abstraction
`deal()` - language of game, says what to do
`hit()`
`stay()`
`iterate_through_cards()` - programmer language, says how to do it

Which one doesn't belong??

##Displaying Output
`def welcome
   puts "welcome"
end`

should be

`def say_welcome
   puts "welcome"
end`

- Don't prematurely exit the program. All your methods should be at the same mental scope and not just randomly exit the program. Your program should probably only have one exit point.
- Watch your indentation. 2 spaces, not tabs.
- Name your methods from the perspective of using them later. That is, think about how you would like to invoke them. Think about the implementation later. For example, if you have an array of `cards`, and you want to write a method to find the ace, your method should be called find_ace, and you can use it like this:  ace = find_ace(cards)`. You shouldn't call it `find_ace_from_cards(cards)`.
- Know when to use a `do/while` loop vs a `while` loop

answer = ''
while answer.downcase != 'n' do
  puts "Continue? (y/n)"
  answer = gets.chomp
end

is not as good as

loop do
  puts "Continue?(y/n)"
  answer = gets.chomp
  break if answer.downcase == 'n'
end

##Clarity over Terseness

## Truthiness
nil and false are false
Everything else is true

