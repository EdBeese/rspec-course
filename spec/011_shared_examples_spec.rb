# We are testing a number of things here that all have the same length value
# We can use the shared_examples method to dry the code.

# This is how we write it
RSpec.shared_examples 'A Ruby object with a length method that returns "3"' do
  it 'returns the number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  # Now we can call the shared_example by:
  include_examples 'A Ruby object with a length method that returns "3"'
end

RSpec.describe String do
  subject { "Vox" }
  include_examples 'A Ruby object with a length method that returns "3"'
end

RSpec.describe Hash do
  subject { {a:1, b: 2, c: 3} }
  include_examples 'A Ruby object with a length method that returns "3"'
end

class MemoryAlpha
  def length
    3
  end
end

RSpec.describe MemoryAlpha do
  subject { described_class.new }
  include_examples 'A Ruby object with a length method that returns "3"'
end
