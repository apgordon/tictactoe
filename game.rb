def setup
  @board = ["1","2","3","4","5","6","7","8","9"]
  @turns = 0
end

def show_board
  puts "#{@board[0]} #{@board[1]} #{@board[2]}"
  puts "#{@board[3]} #{@board[4]} #{@board[5]}"
  puts "#{@board[6]} #{@board[7]} #{@board[8]}"
end

def take_turn
  print "Which square? "
  @square = gets.chomp.to_i
  @board[@square - 1] = "X"
end

setup
show_board
