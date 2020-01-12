class Gym
  attr_reader :name, :members

  @@all = []

  def initialize(name, cost)
    @@all << self

    @name = name
    @members = [] #Get a list of all memberships at a specific gym
  end

  def self.all # Get a list of all gyms
    @@all
  end

  def search_gym(input)#Get a list of all the lifters that have a membership to a specific gym, #Get a list of the names of all lifters that have a membership to that gym
    input.members
  end

  def lift_total(input) #Get the combined lift total of every lifter has a membership to that gym
    Lifter.all.select{|lifter| lifter.memberships.include?(input)}.inject(:+)
  end

end
