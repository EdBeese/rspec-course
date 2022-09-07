# This shows how you can next describe methods within a parent describe
# context_spec.rb
RSpec.describe '#even? method' do
  context 'with even number' do #can use 'context' instead of 'describe' (but both will work)
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
