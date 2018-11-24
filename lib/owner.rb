require "pry"

class Owner
  
  @@instances = []
  
  attr_reader :species
  attr_accessor :name, :pets
  
  def initialize(name, species = "human")
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@instances << self
  end
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    pets[:fishes] << new_fish
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    pets[:cats] << new_cat
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    pets[:dogs] << new_dog
  end
  
  def walk_dogs
    pets[:dogs][0].mood = "happy"
  end
  
  def play_with_cats
    pets[:cats][0].mood = "happy"
  end
  
  def feed_fish
    pets[:fishes][0].mood = "happy"
  end
  
  def sell_pets
    @pets.map do |key, value|
        value.each do |pet|
          if pet.mood == "happy"
            pet.mood = "nervous"
          end
        end
        pets[key].clear
    end
  end
    
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
    
  def self.count
    @@instances.size
  end
  
  def self.reset_all
    @@instances.clear
  end
  
  def self.all
    @@instances
  end
  
end