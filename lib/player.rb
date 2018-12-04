class Player

  STARTING_SQUARE = 1
  FINAL_SQUARE = 100

  attr_accessor :position

  def initialize
    @position = STARTING_SQUARE
  end

  def move
    @position += roll()
  end

  def roll
    return Kernel.rand(1..6)
  end

end
