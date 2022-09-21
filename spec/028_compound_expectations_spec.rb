RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end

  # Single line
  it { is_expected.to be_odd and be > 20 }
end

RSpec.describe 'caterpillar' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('cat').and end_with('pillar')
  end

  # Single line
  it { is_expected.to start_with('cat').and end_with('pillar') }
end

RSpec.describe [:tooting, :battersea, :balham] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq(:tooting).or eq(:battersea).or eq(:balham)
  end
end

RSpec.describe 'firetruck' do
  it { is_expected.to start_with('fire').and end_with('truck') }
end

RSpec.describe 20 do
  it { is_expected.to be_even.and respond_to(:times)}
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it { is_expected.to include(42).and start_with(4, 8, 15)}
end
