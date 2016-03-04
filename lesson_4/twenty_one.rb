# 1. Initialize the deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or 'stay'
# 4. If player bust, dealer wins
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins
# 7. Compare cards and declare winner

# first idea
# card = { 'suit' => 'rank' }
# new_deck = # array of cards

ranks = { '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9, '10': 10, J: 10, Q: 10, K: 10, A: 1}

def fresh_deck
  deck = [ 
    ['C', '2'], ['C', '3'], ['C', '4'], ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A'],
    ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], ['D', '6'], ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'], ['D', 'Q'], ['D', 'K'], ['D', 'A'],
    ['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'], ['H', 'A'],
    ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'], ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'], ['S', 'K'], ['S', 'A'],
  ]
end

def deal_cards(deck, n, hand)
  n.times { hand.push(deck.delete(deck.sample)) }
end

# def ace_check(hand)
#   hand.each do |card|
#     card.

# def add_cards(hand)
#   hand.each do |card|
#     case card[1]
#     when 2..10
#       rank = card[1]
#     when 1
#       ace_check(hand)
#   end
# end

def total(hand)
  # cards = [['H', '3'], ['5', 'Q'], ...]
  values = hand.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # if Aces as 11 busts, drop to 1
  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(hand)
  if total(hand) > 21
    true
  end
end

hand = []
dealer_hand = []
deck = fresh_deck

def choose_winner(player_hand, dealer_hand)
  if player_hand > 21
    "Dealer"
  elsif player_hand > dealer_hand
    "Player"
  elsif dealer_hand > 21
    "Player"
  elsif dealer_hand > player_hand
    "Dealer"
  else
    "Total was Player: #{player_hand}, Dealer: #{dealer_hand}"
  end
end

loop do
  p hand
  p total(hand)
  puts 'hit or stay?'
  answer = gets.chomp
  break if answer == 'stay' || busted?(hand)
  deal_cards(deck, 1, hand)
end

if busted?(hand)
  puts "D'oh, you busted!"
else
  puts "You chose to stay with #{hand} at #{total(hand)}"
end

loop do
  deal_cards(deck, 1, dealer_hand)
  p dealer_hand
  break if total(dealer_hand) >= 17
end

puts "And the winner is: #{choose_winner(total(hand), total(dealer_hand))}"
