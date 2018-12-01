require 'pry'
class Owner
  
  attr_reader :name
  attr_accessor :pets, :name
  @@all = [] 
  
  
   def initialize(name)
     @name = name 
     @species = "human" 
     @say = "I am a human."
     @pets = {fishes: [], cats: [], dogs: []}
     @@all << self 
     
   end 
  
    def self.all 
      @@all 
    end 
    
    def self.count
     @@all.size
    end 
    
    def self.reset_all 
      @@all.clear 
    end 
    
    def species 
      @species
    end 
    
    def say_species 
      @say 
    end 
    
    def buy_fish(name) 
      new = Fish.new("Bubbles")
      @pets[:fishes] << new 
      @pets
  
    end 
    
    def buy_cat(name)
      newer = Cat.new("Crookshanks")
      @pets[:cats] << newer 
      @pets
    end
    
    def buy_dog(name)
      newest = Dog.new("Snuffles")
      @pets[:dogs] << newest 
      @pets 
    end 
    
    def walk_dogs 
      @pets[:dogs].each do |i| 
        i.mood = "happy" 
      end
    end 
    
    def play_with_cats 
      @pets[:cats].each do |i| 
        i.mood = "happy"
    end
  end
    
    def feed_fish 
      @pets[:fishes].each do |i| 
        i.mood = "happy"
    end 
  end
    
    def sell_pets 
       @pets.each do |type, animals| 
         animals
          animals.each do |i| 
            i.mood = "nervous" 
      end
    end
    @pets.clear
    end 
    
    def list_pets 
      fish = @pets[:fishes].size
      dog = @pets[:dogs].size 
      cat = @pets[:cats].size
      
      "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
      
    end
  
  
  
end
  
  
  
  
  