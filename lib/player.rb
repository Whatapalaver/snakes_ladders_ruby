class Player

  STARTING_SQUARE = 1
  FINAL_SQUARE = 100

  attr_accessor :position, :in_play

  def initialize
    @position = STARTING_SQUARE
    @in_play = true
  end

  def play(name)
    while @in_play
      puts "#{name}, you are on square #{@position}, press any key to roll, or 'q' to exit"
      response = gets.chomp.downcase
      response != 'q' ? move() : exit_program
    end
  end

  def move
    roll = dice_roll()
    if win(roll)
      declare_winner
    else
      valid_move(roll) ? @position += roll : declare_overshoot(roll)
    end
  end

  def dice_roll
    return rand(1..6)
  end

  private

  def valid_move(roll)
    @position + roll < FINAL_SQUARE
  end

  def win(roll)
    @position + roll == FINAL_SQUARE
  end

  def declare_winner
    puts 'You have won!'
  end

  def declare_overshoot(roll)
    puts "You've overshot the last square with a roll of #{roll}, try again!\n"
  end

  def exit_program
    puts "Sorry to have bored you, goodbye!"
    exit
  end

end
