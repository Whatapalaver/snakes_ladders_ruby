class Player

  STARTING_SQUARE = 1
  FINAL_SQUARE = 20

  attr_accessor :position, :in_play

  def initialize
    @position = STARTING_SQUARE
    @in_play = true
  end

  def play(name)
    while @position != FINAL_SQUARE && in_play == true
      puts "#{name}, you are on square #{@position}, press any key to roll, or 9 to exit"
      response = gets.chomp
      if response != '9'
        move()
      else 
        "Sorry to have bored you, goodbye!"
      end
    end
  end

  def move
    roll = dice_roll()
    valid_move(roll) ? @position += roll : exception_move(roll)
  end

  def exception_move(roll)
    win(roll) ? declare_winner & @in_play = false : declare_overshoot(roll)
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

end
