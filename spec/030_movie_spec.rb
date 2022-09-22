class Movie
  attr_reader :actor
  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "Make it so."
  end

  def fall_off_ladder
    "Call my agent."
  end

  def light_on_fire
    false
  end
end

# actor = Actor.new('Patrick Stewart')
# movie = Movie.new(actor)
# movie.start_shooting

# We want to be able to test the Movie model, but we don't really care about the functionality of the actor
# We can use a double to spoof the actor, just returning true to the methods
# If we instantiate it with an actual actor and it breaks, it will be hard to pinpoint which model caused the break
RSpec.describe Movie do
  let(:stuntman) { double("Mr Danger", ready?: true, act: "a string", fall_off_ladder: "Sure", light_on_fire: true)}
  subject { described_class.new(stuntman) }

  describe 'start_shooting method' do
    it 'expects Movie class to respond to method' do
      # Say we want to check that an object receives a method eaxctly once
      # expect(stuntman).to receive(:light_on_fire).once
      # An alternate syntax
      # expect(stuntman).to receive(:light_on_fire).exactly(1).times
      # A third way, will test up to the number passed into the argument
      expect(stuntman).to receive(:light_on_fire).at_most(1).times

      # Now we want to check the act method is executed twice
      # expect(stuntman).to receive(:act).twice
      # expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:act).at_least(2).times
      subject.start_shooting
    end
  end
end
