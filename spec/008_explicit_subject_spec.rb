RSpec.describe Hash do
  # Here we are defining subject within a block
  subject(:bob) do
    { a: 1, b: 2 }
  end

  it 'has two key value pairs' do
    expect(subject.length).to eq(2)
    expect(bob[:a]).to eq(1)
  end

  describe 'nested example' do
    # The subject block is also accessible within this nested level
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob[:a]).to eq(1)
    end
  end
end
