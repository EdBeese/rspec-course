RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  # Our custom method is checking that the word is a palindrome
  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  # But we really want to include a custom message to explain the error
  it 'can accept a custom error message' do
    expect(subject).to satisfy('be a palindrome') { |value| value == value.reverse }
  end
end
