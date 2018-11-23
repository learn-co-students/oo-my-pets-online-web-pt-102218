require "pry"

class Owner
  
  @@instances = []
 
  
  attr_reader :species
  attr_accessor :name
  
  
  def initialize(name)
    @name = name
    
    @@instances << self
  end
  
  def species(species)
    creation = self.new(species)
    @species = species
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
  
  def self.species
    @@all_species
  end
  
  
end