class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
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
    @pets.each do |animal_type, animal_obj|
      animal_obj.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    output = ["I have "]
    @pets.each do |animal_type, animal_obj|
      if animal_type == :fishes
        output << "#{animal_obj.count} fish, "
      elsif animal_type == :dogs
        output << "#{animal_obj.count} dog(s), "
      else
        output << "and #{animal_obj.count} cat(s)."
      end
    end
    output.join("")
  end
end