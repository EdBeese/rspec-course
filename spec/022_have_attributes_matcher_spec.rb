class StarshipCaptain
  attr_reader :name, :ship
  def initialize(name, ship)
    @name = name
    @ship = ship
  end
end

RSpec.describe 'have_attributes matcher' do
  describe StarshipCaptain.new('Benjamin Sisko', 'USS Defiant') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Benjamin Sisko')
      expect(subject).to have_attributes(name: 'Benjamin Sisko', ship: 'USS Defiant')
    end
    # Single line syntax
    it { is_expected.to have_attributes(name: 'Benjamin Sisko', ship: 'USS Defiant') }
  end
end
