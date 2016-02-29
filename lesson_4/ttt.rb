require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
def prompt(msg)
  puts "=>#{msg}"
end

def display_board(brd)
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
    prompt "Choose an empty square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."      
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
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
  false 
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]
  winning_lines.each do |line|
    binding.pry
  end

  "winner name here"
end

def tie?(brd)
  board_full?(brd) || !someone_won?(brd)
end

board = initialize_board
display_board(board)

loop do
  player_places_piece!(board)
  computer_places_piece!(board)
  display_board(board)
  
  # leaving off here -- need to review the video, missed something
  break if someone_won?(board) || board_full?(board)
end
display_board(board)
