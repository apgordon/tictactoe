def setup
  @board = ["1","2","3","4","5","6","7","8","9"]
  @whose_turn = "H"
  @victory = 0
end

def show_board
  puts "#{@board[0]} #{@board[1]} #{@board[2]}"
  puts "#{@board[3]} #{@board[4]} #{@board[5]}"
  puts "#{@board[6]} #{@board[7]} #{@board[8]}\n\n"
end

def human_take_turn
  print "Which square? "
  @selection = gets.chomp.to_i
  puts "@selection is #{@selection}"
  check_space("human", @selection)
end

def cpu_take_turn
  puts "CPU playing..."
  @selection = rand(1..9)
  puts "@selection = #{@selection}"
  check_space("cpu", @selection)
end

def check_space(player, selection)
  if selection == @board[selection - 1].to_i
    if player == "human"
      @board[selection -1] = "H"
      @whose_turn = "C"
    else
      @board[selection] = "C"
      puts "CPU played. Your turn."
      @whose_turn = "H"
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
    puts "You win!"
    @victory = 1
    show_board
  end
end

setup

until @victory == 1
  show_board
  if @whose_turn == "H"
    human_take_turn
  else
    cpu_take_turn
  end
  check_victory
end
