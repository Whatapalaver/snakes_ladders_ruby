require 'player'

describe Player do
  subject(:player) { Player.new() }

  describe '#position' do
    it 'a new player starts at position 1' do
      expect(player.position).to eq 1
    end
  end

  describe '#move' do
    context 'randomness stubbed' do
      it 'a move of 3 spaces changes the players position by 3' do
        allow(player).to receive(:roll) { 3 }
        expect { player.move }.to change { player.position }.by(3)
        expect(player.position).to eq 4
      end

      it 'moves cumulatively adds to the player position' do
        allow(player).to receive(:roll) { 3 }
        player.move
        allow(player).to receive(:roll) { 4 }
        player.move
        expect(player.position).to eq 8
      end
    end
  end

  describe '#roll' do
    context 'randomness included' do
      it 'returns an integer value between 1 and 6' do
        expect(player.roll).to be_kind_of(Numeric)
        expect(player.roll).to be >= 1
        expect(player.roll).to be <= 6
      end
    end
  end
end
