class Membership
  attr_reader :cost
  @@all = []

  def initialize(gym, cost, lifter)
    @@all << self
    @cost = cost
    Gym.gym.members << lifter
  end
end
