class RecipeCard

  @@all = []

  attr_accessor  :user, :recipe, :date, :rating

  def self.all
    @@all
  end

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

end
