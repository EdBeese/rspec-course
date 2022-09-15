RSpec.describe 'include matcher' do
  describe 'cool beans' do
    it 'checks for substring inclusion' do
      expect(subject).to include('cool')
      expect(subject).to include('l be')
      expect(subject).to include('beans')
    end

    it { is_expected.to include('cool') }
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array, regardless of order' do
      expect(subject).to include(10)
      expect(subject).to include(10, 20)
      expect(subject).to include(30, 10)
    end
  end

  # The best way to describe a hash is within parentheses
  describe ({ a: 2, b: 4 }) do
    # it can check for a key or a key-value pair
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:a, :b)
    end

    it 'can check for a key-value pair' do
      expect(subject).to include(a: 2)
    end

    it { is_expected.to include(:a) }
    it { is_expected.to include(a: 2) }
  end
end
