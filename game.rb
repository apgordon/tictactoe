def setup
  @board = ["0","1","2","3","4","5","6","7","8"]
  @turns = 0
end

def show_board
  puts "#{@board[0]} #{@board[1]} #{@board[2]}"
  puts "#{@board[3]} #{@board[4]} #{@board[5]}"
  puts "#{@board[6]} #{@board[7]} #{@board[8]}"
end

def human_take_turn
  print "Which square? "
  @selection = gets.chomp.to_i
  check_spcae(@selection)
end

def cpu_take_turn
  selection = rand(0..8)
end

def check_spcae(selection)
  if selection == @board[selection].to_i
    @board[selection] = "X"
  else
    puts "Square already taken."
  end
end


setup
show_board
