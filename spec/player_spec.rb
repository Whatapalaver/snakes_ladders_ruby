require 'player'

describe Player do
  subject(:player) { Player.new() }

  describe '#position' do
    it 'a new player starts at position 1' do
      expect(player.position).to eq 1
    end
  end
end
