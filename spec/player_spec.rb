require 'player'
describe Player do
  subject(:george) { Player.new('George') }
  subject(:barry) { Player.new('Barry') }

  describe '#name' do
    it "returns its name" do
      expect(george.name).to eq 'George'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(george.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces HP' do
      expect { george.receive_damage }.to change { george.hit_points }.by (-10)
    end
  end
end
