require 'player'

describe Player do
  subject(:dora) {Player.new('Dora') }
  subject(:clare) {Player.new('Clare')}

  describe '#name' do
    it 'returns the name' do
      expect(dora.name).to eq 'Dora'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dora.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
      it 'damages the player' do
        expect(clare).to receive(:is_attacked)
        dora.attack(clare)
      end
    end

      describe '#is_attacked' do
    it 'reduces the player hit points' do
      expect { clare.is_attacked }.to change { clare.hit_points }.by(-10)
    end
  end
end
