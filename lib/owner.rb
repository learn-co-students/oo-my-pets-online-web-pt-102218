class Owner
  attr_accessor :pets, :name
  attr_reader :species
  def initialize(pets) 
    @pets = pets
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    
  end
  
  @@all = [] 
  
  def self.all 
    @@all 
  end
   
  def self.count 
    self.all.count 
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def species 
    @species = "human"
  end
  
  def say_species 
    "I am a human."
  end
  
  def buy_fish(name) 
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end 
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end 
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog| 
      dog.mood = "happy"
    end
  end
  
  def play_with_cats 
    @pets[:cats].each do |cat| 
      cat.mood = "happy"
    end
  end
  
  def feed_fish 
    @pets[:fishes].each do |fish| 
      fish.mood = "happy"
    end 
  end
  
  def sell_pets 
    @pets.each do |key, array|
      array.each do |pet|
        pet.mood = "nervous"
      end
      array.clear
    end
  end
  
  def list_pets 
    fish_num = @pets[:fishes].count
    cats_num = @pets[:cats].count
    dogs_num = @pets[:dogs].count
    "I have #{fish_num} fish, #{dogs_num} dog(s), and #{cats_num} cat(s)."
  end
  
  
end