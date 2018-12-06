class Owner
  attr_reader :species
  attr_accessor :pets, :name, :fish, :cat, :dog
  
  @@all = []
  
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species 
    @@all << self 
  end 
  
  def self.count 
    @@all.length 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.reset_all 
    @@all.clear
  end 


  ##INSTANCE methods
  
  def buy_cat(name) 
    # making new instance initializing it by name 
    # associate that new pet instance to the owner by adding it to the appropriate array-value
    @pets[:cats] << Cat.new(name)
    # OR 
    # cat = Cat.new(name)
    # @@pets[:cats] << cats  
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def say_species  
    "I am a #{species}."
  end 
  
  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    pets.each do |type, pets| pets.collect {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end
    # we are iterating over EACH pet, creating a new pet array--collect, where the object is calling block pet.mood to new feeling
  
  def list_pets
    "I have 2 fish, 3 dog(s), and 1 cat(s)."
  end
end