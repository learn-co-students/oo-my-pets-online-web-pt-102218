class Fish
  attr_reader :name
  attr_writer :mood
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  def mood
    @mood
  end
  # code goes here
end
