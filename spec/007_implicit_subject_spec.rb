RSpec.describe Hash do
  # RSpec has a subject method, which means that if we can pass Hash (or Array, etc.) above and we don't need to create one like in the below line
  # let(:my_hash) { { } }

  it 'should start off empty' do
    expect(subject.length).to eq(0)
  end

end

RSpec.describe Array do
  it 'starts with an empty array and elements can be added to it' do
    expect(subject.length).to eq(0)
    subject.push('First Element')
    expect(subject.length).to eq(1)
  end
end
