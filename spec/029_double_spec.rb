RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # We can use the double method to create bespoke classes, without having to define them
    # Here, you start by naming the double, then you can provide a hash of methods and their values
    # stuntman = double("Mr Danger", {fall_off_ladder: 'Ouch', light_on_fire: true})

    # alternative syntax
    # stuntman = double('Mr Danger')
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')

    # Third syntax
    stuntman = double("Mr Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true )

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end
