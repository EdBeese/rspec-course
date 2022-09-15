RSpec.describe 'contain_exactly matcher' do
  subject { [1, 2, 3] }

  describe 'long form syntax' do
    it 'should check for the presence of all elements' do
      # this method will check that the array contains exactly the content passed
      # It doesn't matter what order the content is passed in
      expect(subject).to contain_exactly(1, 2, 3)
      expect(subject).to contain_exactly(3, 2, 1)

      # The below will fail
      # expect(subject).to contain_exactly(1, 2)
      # expect(subject).to contain_exactly(1, 2, 3, 4)
    end
    # short-form syntax
    it { is_expected.to contain_exactly(1, 2, 3)}
  end
end
