# 005 nested_hooks_spec.rb
# Considering the order of execution for the following:
RSpec.describe 'nested hooks' do
  # This will be run once at the start of the execution
  before(:context) do
    puts 'Outer before context'
  end

  # This will be run once for the test in this context, and then for all of the other tests within the context block below (3 times)
  before(:example) do
    puts 'Outer before example'
  end

  it 'does basic maths' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    # This will run once before the tests in this context
    before(:context) do
      puts 'Inner before context'
    end

    # This will run before every test within this level
    before(:example) do
      puts 'Inner before example'
    end

    it 'does some more basic maths' do
      expect(2 + 2).to eq(4)
    end

    it 'does subtraction to' do
      expect(3 - 2).to eq(1)
    end
  end
end
