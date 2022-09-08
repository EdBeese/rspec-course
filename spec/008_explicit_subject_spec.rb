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

# Test
RSpec.describe Array do
  subject(:sally) do
    ['one', 'two']
  end

  it 'has two elements and elements can be removed' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'has not been altered by the first test' do
    expect(sally).to eq(['one', 'two'])
  end
end
