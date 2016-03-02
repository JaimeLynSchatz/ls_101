require 'pry'

INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]].freeze

def prompt(msg)
  puts "=>#{msg}"
end

def joinor(arr, delim, conjunction = 'or')
  # arr.join('#{delim}')
  # tail = arr.pop
  # arr.push("#{conjunction}").push(tail)
  # arr.to_s -- doesn't work the way I want, need .join last
  arr[-1] = "#{conjunction} #{arr.last}" if arr.size > 1
  arr.join(delim)
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  prompt "You're the #{PLAYER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose an empty square (#{joinor(empty_squares(brd), ', ', 'and and')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  near_win = detect_threat(brd)
  p near_win
  if near_win == nil
    p near_win
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  else
    p near_win
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd) == []
  # if someone_won?(brd)
  #   prompt "There's a winner!"
  # else
  #   prompt "It's a tie!"
  # end
end

def someone_won?(brd)
  detect_winner(brd) == 'Player' || detect_winner(brd) == 'Computer'
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    # use a splat == *line is the same as line[0], line[1], line[2]
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def detect_threat(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 2
      p brd.values_at(*line)
      # return the one that's blank
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 2
      # return the one that's blank
    end
  end
  nil
end

def tie?(brd)
  board_full?(brd) || !someone_won?(brd)
end

player_score = 0
computer_score = 0

loop do
  board = initialize_board

  loop do
    display_board(board)

    player_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    display_board(board)
    break if someone_won?(board) || board_full?(board)
  end

  winner = detect_winner(board)
  if someone_won?(board)
    prompt "#{winner} won!"
  else
    prompt "It's a tie!"
  end

  if winner == 'Player'
    player_score += 1
  elsif winner == 'Computer'
    computer_score += 1
  end

  if player_score == 5 || computer_score == 5
    prompt "#{winner} was victorious!\nPlay again? (y or no)"
    play_again = gets.chomp
  else
    play_again = 'y'
  end
  break unless play_again.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Goodbye!"
