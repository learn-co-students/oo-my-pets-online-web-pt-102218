class Owner

@@all = []

attr_reader :species, :pets
attr_accessor :name, :fishes, :dogs, :cats

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end
  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    bought_fish = Fish.new(name)
    @pets[:fishes] << bought_fish
  end

  # code goes here
end
