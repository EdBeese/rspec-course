RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  class CustomError < StandardError; end

  # This will pass in the event of any error, so it is not ideal
  # It could be breaking for a reason that's unexpected
  it 'can check for any error' do
    expect { some_method }.to raise_error
  end

  # This is checking for a name error, which is the result of something being undefined
  # In this instance, some_method refers to x, but x isn't defined anywhere - resulting in a name error
  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    # Dividing something by 0 will cause the ZeroDivisionError
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  # We can also check for custom errors that we've created.
  it 'can check for a user-created error' do
    expect { raise CustomError}.to raise_error(CustomError)
  end
end
