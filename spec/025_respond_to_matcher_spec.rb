class Enterprise
  def captain
    'Jean Luc Picard'
  end

  def registration
    'NCC 1701-E'
  end

  def crew_complement(number)
    "The Enterprise has a crew complement of #{number}"
  end
end

RSpec.describe Enterprise do
  it 'confirms that an object can respond to a method' do
    expect(subject).to respond_to(:captain)
    expect(subject).to respond_to(:registration, :crew_complement)
  end

  it 'confirms an object can respind to a method with arguments' do
    expect(subject).to respond_to(:crew_complement)
    expect(subject).to respond_to(:crew_complement).with(1).arguments
  end

  # short syntax
  it { is_expected.to respond_to(:captain, :registration) }
  it { is_expected.to respond_to(:crew_complement).with(1).arguments }
end
