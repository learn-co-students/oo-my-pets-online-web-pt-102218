require 'pry'
class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
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
    "I am a #{self.species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes].push(new_fish)
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats].push(new_cat)
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs].push(new_dog)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = 'happy'}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = 'happy'}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = 'happy'}
  end

  def sell_pets
    self.pets.each do |type, pet_list|
      pet_list.each do |pet|
        pet.mood = 'nervous'
      end
    end
    self.pets.each {|type, pet_list| pet_list.clear}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
