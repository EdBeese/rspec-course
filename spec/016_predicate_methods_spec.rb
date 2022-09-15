RSpec.describe 'predicate methods and predicate matchers' do
  # You can write it like this
  it 'can be tested with Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  # RSpec has built in predicate matchers, which can be applied to any built-in Ruby predicate method
  # We just remove the '?' and prefix it with 'be_'
  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
    expect(15).to be_odd
    expect(0).to be_zero
    expect([]).to be_empty
  end

  # As a single line block
  describe 0 do
    it { is_expected.to be_zero }
  end
end
