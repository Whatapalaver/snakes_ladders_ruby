require 'player'

describe Player do
  subject(:player) { Player.new() }

  describe '#position' do
    it 'a new player starts at position 1' do
      expect(player.position).to eq 1
    end
  end

  context 'randomness stubbed' do
    describe '#move' do
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

      it 'is allowed and declares GAME OVER when the FINAL_SQUARE is achieved' do
        player.position = 95
        allow(player).to receive(:roll) { 5 }
        expect { player.move }.to output("You have won! Your position has been reset.\n").to_stdout
      end

      it 'is not allowed if it exceeds the FINAL_SQUARE' do
        player.position = 95
        allow(player).to receive(:roll) { 6 }
        expect { player.move }.to output("You've overshot the last square with a roll of 6, try again!\n").to_stdout
      end

    end
  end

  context 'randomness included' do
    describe '#roll' do
      it 'returns an integer value between 1 and 6' do
        expect(player.roll).to be_kind_of(Numeric)
        expect(player.roll).to be_between(1, 6).inclusive
      end
    end
  end

end
