require 'pry'
class Cat
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood
    @mood
  end

  # code goes here
end
