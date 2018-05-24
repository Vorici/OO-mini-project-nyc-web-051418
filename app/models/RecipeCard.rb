class RecipeCard

  attr_accessor :user, :recipe, :rating, :date

  ALL = []

  def initialize(user,recipe,rating, date)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating

    ALL << self
  end

  def self.all
    ALL
  end
end
