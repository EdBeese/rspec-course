RSpec.describe 'before and after hooks' do
  # This will execute the actions once at the beginning and end of the context (this entire desribe)
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end

  # This will execute the action before and after each of the tests
  before(:example) do
    puts 'Before Example'
  end

  after(:example) do
    puts 'After Example'
  end

  # Two tests that will pass
  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is another random example' do
    expect(5 * 5).to eq(25)
  end
end
