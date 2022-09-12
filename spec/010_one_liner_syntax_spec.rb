RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  # We can run the above in just a single line with the is_expected method
  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
