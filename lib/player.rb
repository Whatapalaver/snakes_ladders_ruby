class Player

  STARTING_SQUARE = 1
  FINAL_SQUARE = 100

  attr_accessor :position

  def initialize
    @position = STARTING_SQUARE
  end

  def move
    proposed_move = roll()
    if move_type(proposed_move) == :valid
      @position += proposed_move
    elsif move_type(proposed_move) == :win
      puts "You have won! Your position has been reset."
      @position =1
    else 
      puts "You've overshot the last square with a roll of #{proposed_move}, try again!"
    end
  end

  def roll
    return Kernel.rand(1..6)
  end

  private

  def move_type(proposed_move)
    if @position + proposed_move == FINAL_SQUARE
      :win
    elsif @position + proposed_move < FINAL_SQUARE
      :valid
    else
      :bust
    end
  end

end
