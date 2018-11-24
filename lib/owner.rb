class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species=species
    @@all.push(self)
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes].push(Fish.new(name))
  end

  def buy_dog(name)
    @pets[:dogs].push(Dog.new(name))
  end

  def buy_cat(name)
    @pets[:cats].push(Cat.new(name))
  end

  def walk_dogs
    @pets[:dogs].each{|x|x.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each{|x|x.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each{|x|x.mood="happy"}
  end

  def sell_pets
    @pets.each_key{|k|
      @pets[k].each{|pet|
        pet.mood='nervous'}
      @pets[k]=[]}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

end