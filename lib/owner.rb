class Owner
  
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = { cats: [], dogs: [], fishes: [] }
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = 'happy' }
  end
  
  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = 'happy' }
  end
  
  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = 'happy' }
  end
  
  def sell_pets
    @pets.each do |type, type_arr|
      type_arr.each_with_index do |pet, pet_i|
        @pets[type][pet_i].mood = 'nervous'
      end
      @pets[type] = []
    end
  end
  
  def list_pets
    counts = @pets.map { |type, type_arr| type_arr.length }
    "I have #{counts[2]} fish, #{counts[1]} dog(s), and #{counts[0]} cat(s)."
  end
  
  ############### Class Methods ################
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.length
  end
  
end