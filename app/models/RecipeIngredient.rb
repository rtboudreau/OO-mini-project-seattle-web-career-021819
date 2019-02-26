class RecipeIngredient

  @@all = []

  def self.all
    @@all << self
  end

  attr_reader :ingredient, :recipe



end
