require_relative 'RecipeCard.rb'

class User

  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name

    ALL << self
  end

  def self.all
    ALL
  end

  def add_recipe_card(recipe,rating,date)
    RecipeCard.new(self,recipe,rating,date)
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
    end
  end

  def recipes
    recipe_cards.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    array = Allergen.all.select {|allergen| allergen.user == self}#should return all of the ingredients this user is allergic to
    array.map {|allergen| allergen.ingredient.name}
  end

  def top_three_recipes
  top_three_recipes = recipe_cards.sort_by {|int| int.rating}
  top_three_recipes.last(3)
  end

  def most_recent_recipe
    recipes.last
  end
end
