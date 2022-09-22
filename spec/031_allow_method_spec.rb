RSpec.describe 'allow method review' do
  it 'can customise return value for method on doubles' do
    calculator = double
    allow(calculator).to receive(:add).and_return(15)
    expect(calculator.add(150)).to eq(15)
  end

  it 'can stub one or more methods on a real object' do
    arr = [1, 2, 3]
    # Now the sum method has been overwritten and will always return 10
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)

    # But it doesn't impact other methods, such as push
    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])
  end

  it 'can return multiple return values in sequence' do
    mock_array = double
    # By passing multiple return values, it will return these in order when called upon
    # The first time it will return :c, the second, :b, and then every subsequent time, nil
    # This mimics the behaviour of an array, without creating one
    allow(mock_array).to receive(:pop).and_return(:c, :b, nil)
    expect(mock_array.pop).to eq(:c)
    expect(mock_array.pop).to eq(:b)
    expect(mock_array.pop).to be_nil
    expect(mock_array.pop).to be_nil
  end
end
