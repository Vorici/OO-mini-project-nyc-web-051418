require_relative '../config/environment.rb'
require_relative '../app/models/User.rb'
require_relative '../app/models/Recipe.rb'
require_relative '../app/models/RecipeCard.rb'
require_relative '../app/models/RecipeIngredient.rb'
require_relative '../app/models/Ingredient.rb'
require_relative '../app/models/Allergen.rb'
require 'pry'

tim = User.new("Tim Beasley")
john = User.new("John Smith")
bobby = User.new("Bobby Jones")
james = User.new("James Johnson")
mark = User.new("Mark Twain")
ann = User.new("Anne Lively")
frank = User.new("Frank Sinatra")
jessica = User.new("Jessica Biel")

chilli = Recipe.new("Chilli")
pizza = Recipe.new("pizza")
pasta = Recipe.new("Pasta")
soup = Recipe.new("Soup")
burger = Recipe.new("Burger")
falafel = Recipe.new("Falafel")
omelet = Recipe.new("omelet")
stew = Recipe.new("stew")

rc1 = tim.add_recipe_card(chilli,10,"05/14/18")
rc2 = tim.add_recipe_card(pizza,2,"05/14/18")
rc3 = tim.add_recipe_card(pasta,9,"05/14/18")
rc4 = john.add_recipe_card(chilli,10,"05/14/18")
rc5 = john.add_recipe_card(pasta,1,"05/14/18")
rc6 = jessica.add_recipe_card(chilli,4,"05/14/18")
rc7 = frank.add_recipe_card(chilli,7,"05/14/18")
rc8 = mark.add_recipe_card(chilli,8,"05/14/18")


sauce = Ingredient.new("sauce")
sugar = Ingredient.new("sugar")
flour = Ingredient.new("flour")
salt = Ingredient.new("salt")
pepper = Ingredient.new("pepper")
chicken = Ingredient.new("chicken")
beef = Ingredient.new("beef")
salmon = Ingredient.new("salmon")
sausage = Ingredient.new("sausage")
garlic = Ingredient.new("garlic")

soup_ingredients = []

soup_ingredients << sauce
soup_ingredients << sugar
soup_ingredients << flour
soup_ingredients << salt
soup_ingredients << pepper

stew_ingredients = []

stew_ingredients << beef
stew_ingredients << chicken
stew_ingredients << salt
stew_ingredients << salmon
stew_ingredients << sausage


salmon_allergen = Allergen.new(tim,salmon)
garlic_allergen = Allergen.new(jessica,garlic)
beef_allergen= Allergen.new(frank,beef)
flour_allergen = Allergen.new(tim,flour)
sauce_allergen = Allergen.new(tim,sauce)
sugar_allergen = Allergen.new(tim,sugar)
beef_allergen = Allergen.new(mark,beef)
salt_allergen = Allergen.new(tim,salt)
sugar_allergen = Allergen.new(mark,sugar)
pepper_allergen = Allergen.new(mark,pepper)
chicken_allergen = Allergen.new(bobby,chicken)
flour_allergen = Allergen.new(john,flour)



soup.add_ingredients(soup_ingredients)



stew.add_ingredients(stew_ingredients)

stew.ingredients




 binding.pry
 true
