RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  # With eq, it will match, as long as they are the same mathmatical value
  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq(b)
      expect(b).to eq(3.0)
      expect(a).to eq(3)
    end
  end

  # With eql, it is also testing that the two elements are the same class as well as value
  describe 'eql matcher' do
    it 'tests for value, including same data class' do
      expect(a).not_to eql(3)
      expect(a).not_to eql(b)
      expect(b).not_to eql(3.0)
    end
  end
end
