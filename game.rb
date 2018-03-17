def setup
  @board = ["0","1","2","3","4","5","6","7","8"]
end

def show_board
  puts "#{@board[0]} #{@board[1]} #{@board[2]}"
  puts "#{@board[3]} #{@board[4]} #{@board[5]}"
  puts "#{@board[6]} #{@board[7]} #{@board[8]}\n\n"
end

def human_take_turn
  print "Which square? "
  @selection = gets.chomp.to_i
  check_space("human", @selection)
end

def cpu_take_turn
  @selection = rand(3..9)
  check_space("cpu", @selection)
end

def check_space(player, selection)
  if selection == @board[selection].to_i
    if player == "human"
      @board[selection] = "H"
    else
      @board[selection] = "C"
      puts "CPU played. Your turn."
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

def check_victory
  if @board[0] == "H" && @board[1] == "H" && @board[2] == "H"
    puts "win!"
  end
end


setup

show_board
human_take_turn
show_board
check_victory
cpu_take_turn
show_board

human_take_turn
show_board
check_victory
cpu_take_turn
show_board

human_take_turn
show_board
check_victory
cpu_take_turn
show_board

human_take_turn
show_board
check_victory
cpu_take_turn
show_board
