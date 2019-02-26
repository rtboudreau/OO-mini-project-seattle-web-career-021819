class Recipe

  @@all = []

  attr_accessor :name, :ingredients, :allergens

  def self.all
    @@all
  end

  def initialize(name, ingredients)
    @name = name
    #@users = users
    @ingredients = ingredients
    @allergens = allergens
    @@all << self
  end

  def users
    cards = RecipeCard.all.select{|dish| dish.recipe == self}
    cards.map {|instance_card| instance_card.user}
  end

  def count_users
      users.length
  end

  def self.most_popular
    tally = Hash.new
    self.all.each do |recipe|
      tally[recipe] = recipe.count_users
    end
    tally.each do |key, value|
      if value == tally.values.max
        xx = key.name
      end
      return xx
    end
  end

#this isn't working - we are spitting out the arguement array
  def add_ingredients(array)
    array.each do |item|
      if item == self.ingredients
      puts self.ingredients
      end
    end
  end

end
