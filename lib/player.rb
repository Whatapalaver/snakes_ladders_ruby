class Player

  STARTING_SQUARE = 1
  FINAL_SQUARE = 100

  attr_accessor :position

  def initialize
    @position = STARTING_SQUARE
  end

  def move(number)
    @position += number
  end

end
