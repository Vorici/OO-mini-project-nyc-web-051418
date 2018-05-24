require_relative 'RecipeCard.rb'

class Recipe

  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name

    ALL << self
  end

  def self.all
    ALL
  end

  def add_ingredients(ingredients)
    ingredients.each do |item|
      RecipeIngredient.new(self,item)
    end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end
  end

  def ingredients
    recipe_ingredients.map do |recipe_ingredient|
      recipe_ingredient.ingredient.name
    end
  end


  def allergens
    array = []
    Allergen.all.each do |allergen|
      self.ingredients.each do |ingredient|
        if allergen.ingredient.name == ingredient
          array  <<  allergen.ingredient.name
        end
      end
    end
    array.uniq
  end

  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe == self
    end
  end

  # def self.most_popular
  #   hash = {}
  #   self.all.each do |recipe|
  #     # binding.pry
  #     if hash.has_key?(recipe.name)
  #       hash[recipe.name] = 0
  #     end
  #     hash[recipe.name] = hash[recipe.name] + 1
  #   end
  # end

  def users
  #Should return all of the recipes this user has recipe cards for
    recipe_cards.map do |recipe_card|
      recipe_card.user
    end
  end
end
