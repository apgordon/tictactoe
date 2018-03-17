def setup
  @board = ["1","2","3","4","5","6","7","8", "9"]
  @turns = 0
end

def show_board
  puts "#{@board[0]} #{@board[1]} #{@board[2]}"
  puts "#{@board[3]} #{@board[4]} #{@board[5]}"
  puts "#{@board[6]} #{@board[7]} #{@board[8]}"
end

def human_take_turn
  puts "HUMAN TURN"
  print "Which square? "
  @selection = gets.chomp.to_i - 1
  check_space("human", @selection)
end

def cpu_take_turn
  puts "CPU TURN"
  @selection = rand(1..9)
  check_space("cpu", @selection)
end

def check_space(player, selection)
  if selection == @board[selection - 1].to_i
    if player == "human"
      @board[selection] = "X"
    else
      @board[selection] = "O"
    end
  else
    if player == "human"
      puts "Square already taken."
      human_take_turn
    else
      cpu_take_turn
    end
  end
end


setup
show_board
human_take_turn
show_board
cpu_take_turn
show_board
