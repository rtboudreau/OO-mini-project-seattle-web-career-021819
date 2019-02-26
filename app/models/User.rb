class User

  @@all = []

  attr_accessor :name, :recipes

  def initialize(name)
    @name = name
    @recipes = recipes
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    cards = RecipeCard.all.select{|name| name.user == self}
    cards.map {|instance_card| instance_card.recipe}
  end

  def add_recipe_card(recipe)
    RecipeCard.new(self, recipe)
  end

  def declare_allergen(allergen)
    Allergen.new(self, allergen)
  end

  def allergens
    Allergen.ingredient
  end

  def top_three_recipes
    cards = RecipeCard.all.select{|name| name.user == self}
    var_a = cards.max_by(3) { |card| card.rating}
    var_a.map do |var|
      var.recipe.name
    end
  end

  def most_recent_recipe
    cards = RecipeCard.all.select{|name| name.user == self}
    var_a = cards.max_by(1) { |card| card.date}
    var_a.map do |var|
      var.recipe.name
    end
  end

end
