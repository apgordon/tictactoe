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
  check_space("human", @selection)
end

def cpu_take_turn
  @selection = rand(1..9)
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
  elsif @board[0] == "C" && @board[1] == "C" && @board[2] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[3] == "H" && @board[4] == "H" && @board[5] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[3] == "C" && @board[4] == "C" && @board[5] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[6] == "H" && @board[7] == "H" && @board[8] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[6] == "C" && @board[7] == "C" && @board[8] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[0] == "H" && @board[3] == "H" && @board[6] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[0] == "C" && @board[3] == "C" && @board[6] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[1] == "H" && @board[4] == "H" && @board[7] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[1] == "C" && @board[4] == "C" && @board[7] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[2] == "H" && @board[5] == "H" && @board[8] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[2] == "C" && @board[5] == "C" && @board[8] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[0] == "H" && @board[4] == "H" && @board[8] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[0] == "C" && @board[4] == "C" && @board[8] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[2] == "H" && @board[4] == "H" && @board[6] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[2] == "C" && @board[4] == "C" && @board[6] == "C"
    puts "You lose!"
    @victory = 1
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
