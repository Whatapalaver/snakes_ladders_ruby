require 'player'

describe Player do
  subject(:player) { Player.new() }

  describe '#position' do
    it 'a new player starts at position 1' do
      expect(player.position).to eq 1
    end
  end

  describe '#move' do
    it 'a move of 3 spaces changes the players position by 3' do
      expect { player.move(3) }.to change { player.position }.by(3)
    end
  end
end