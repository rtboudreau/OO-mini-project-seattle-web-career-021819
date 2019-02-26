
class Ingredient

  @@all = []

  def self.all
    @@all << self
  end

  def self.most_common_allergen
   hash = Hash.new

   Allergen.all.each do |var|
     hash[var.ingredient] ||= 0
     hash[var.ingredient] += 1
   end
   hash.each do |key, var|
     if var == hash.values.max
      return key
     end
   end
  end
end
