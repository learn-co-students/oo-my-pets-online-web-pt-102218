require 'pry'

class Cat
  
  attr_reader :name, :mood
  attr_accessor :mood
  
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end 
  
end