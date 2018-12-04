class Player

  STARTING_SQUARE = 1
  FINAL_SQUARE = 100

  attr_accessor :position

  def initialize
    @position = STARTING_SQUARE
  end

  def move
    roll = dice_roll()
    valid_move(roll) ? @position += roll : exception_move(roll)
  end

  def exception_move(roll)
    win(roll) ? declare_winner : declare_overshoot(roll)
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
    puts 'You have won! Your position has been reset.'
    @position = 1
  end

  def declare_overshoot(roll)
    puts "You've overshot the last square with a roll of #{roll}, try again!\n"
  end

end
