require_relative 'player.rb'

module Console
  def self.start
    puts 'Please enter your name to play'
    name = gets.chomp
    puts "Welcome #{name}, let's play!"
    player = Player.new
    player.play(name)
  end
end
