class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  # Instead of setting new instances with the class name, we can use the helper method described_class
  # This is useful, in case the name of the class were ever to change
  # If that happened, then you would only need to change the describe on the first line of the test
  subject { described_class.new('Edward IV') }
  let(:richard) { described_class.new('Richard III') }

  it 'represents a great person' do
    expect(subject.name).to eq('Edward IV')
  end
end
