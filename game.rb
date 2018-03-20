def setup
  @board = ["0", "1","2","3","4","5","6","7","8","9"]
  @whose_turn = "C"
  @victory = 0
end

def show_board
  puts "#{@board[1]} #{@board[2]} #{@board[3]}"
  puts "#{@board[4]} #{@board[5]} #{@board[6]}"
  puts "#{@board[7]} #{@board[8]} #{@board[9]}\n\n"
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
  if selection == @board[selection].to_i
    if player == "human"
      @board[selection] = "H"
      @whose_turn = "C"
    elsif player == "cpu"
      @board[selection] = "C"
      puts "CPU played #{selection}. Your turn."
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
  if @board[1] == "H" && @board[2] == "H" && @board[3] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[1] == "C" && @board[2] == "C" && @board[3] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[4] == "H" && @board[5] == "H" && @board[6] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[4] == "C" && @board[5] == "C" && @board[6] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[7] == "H" && @board[8] == "H" && @board[9] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[7] == "C" && @board[8] == "C" && @board[9] == "C"
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
  elsif @board[3] == "H" && @board[6] == "H" && @board[9] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[3] == "C" && @board[6] == "C" && @board[9] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[1] == "H" && @board[5] == "H" && @board[9] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[1] == "C" && @board[5] == "C" && @board[9] == "C"
    puts "You lose!"
    @victory = 1
  elsif @board[3] == "H" && @board[5] == "H" && @board[7] == "H"
    puts "You win!"
    @victory = 1
  elsif @board[3] == "C" && @board[5] == "C" && @board[7] == "C"
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
