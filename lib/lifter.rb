class Lifter
  attr_reader :name, :lift_total
  attr_accessor :memberships

  @@all = []

  def initialize(name, lift_total)
    @@all << self
    
    @name = name
    @lift_total = lift_total
    @memberships = []
  end

  def self.all#Get a list of all lifters
    @@all
  end

  def search_memberships(input) #Get a list of all the memberships that a specific lifter has
    input.memberships
  end
 
  def search_gyms(input) #Get a list of all the gyms that a specific lifter has memberships to
    input.memberships
  end
  
  def average_lift #Get the average lift total of all lifters
    @@all.select{|lifter| lifter.lift_total}.inject(:+)/@@all.length
  end

  def total_cost(input) #Get the total cost of a specific lifter's gym memberships
    input.memberships.inject(:+)
  end
  
  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def signup(gym, cost, lifter)
    membership = Membership.new(gym, cost)
    self.membership << gym
  end

end
