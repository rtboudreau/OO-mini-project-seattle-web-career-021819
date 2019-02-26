class Allergen

  @@all = []

  attr_accessor :name, :ingredient


  def initialize(name, ingredient)
    @name = name
    @ingredient = ingredient
    @@all << self
  end


  def self.all
    @@all
  end



end
