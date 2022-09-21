RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    connection = double('Database Connection', { connect: true, disconnect: 'Goodbye' })

    expect(connection.connect).to eq(true)
    expect(connection.disconnect).to eq('Goodbye')
  end
end

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    fs = double('File System', { connect: true, disconnect: 'Goodbye' })

    allow(fs).to receive(:read).and_return("Romeo and Juliet")
    allow(fs).to receive(:write).and_return(false)

    expect(fs.read).to eq("Romeo and Juliet")
    expect(fs.write).to eq(false)
  end
end
