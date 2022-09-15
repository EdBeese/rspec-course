# instead of iterating over an array, we can use the all helper to check every item

RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    expect([5, 7, 9]).to all(be_odd)
    expect([2, 4, 6]).to all(be_even)
    expect([5, 7, 9]).to all(be < 10)
  end

  # in a block
  describe [5, 7, 9] do
    it { is_expected.to all(be_odd)}
  end
end
