require_relative '../config/environment.rb'


jane = User.new("Jane")
peter = User.new("Peter")
jack = User.new("Jack")
kim = User.new("Kim")
reid = User.new("Reid")
liz = User.new("Liz")
nick = User.new("Nick")

cookie = Recipe.new("Cookie", "Chocolate")
pie = Recipe.new("Pie", "Berries")
cake = Recipe.new("Cake", "Ice Cream")
ice_cream = Recipe.new("Ice Cream", "Peanuts")


r1 = RecipeCard.new(jane, cookie, 1998, 4)
r2 = RecipeCard.new(peter, pie, 1992, 2)
r3 = RecipeCard.new(jack, cake, 1970, 3)
r4 = RecipeCard.new(kim, cake, 2002, 5)
r5 = RecipeCard.new(kim, pie, 2018, 4)
r6 = RecipeCard.new(kim, ice_cream, 2016, 3)
r7 = RecipeCard.new(kim, cookie, 1999, 2)
r8 = RecipeCard.new(reid, ice_cream, 1750, 5)
r9 = RecipeCard.new(reid, pie, 1945, 5)
r10 = RecipeCard.new(reid, cookie, 1983, 4)
r11 = RecipeCard.new(reid, cake, 2005, 2)
r12 = RecipeCard.new(liz, cookie, 2007, 1)
r13 = RecipeCard.new(nick, cookie, 1200, 4)

puts r1

binding.pry
