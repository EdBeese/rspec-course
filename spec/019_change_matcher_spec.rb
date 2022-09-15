RSpec.describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that a method changes object state' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    # or an alternative syntax - by just checks that the length has changed by 1
    # This means that it'll work irrespective of the length of the array
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end

  it 'accepts negative arguments' do
    expect { subject.pop }.to change { subject.length }.from(3).to(2)
    # with the by method
    expect { subject.pop }.to change { subject.length }.by(-1)
  end
end
