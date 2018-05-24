class Ingredient

  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name

    ALL << self
  end
  def self.all
    ALL
  end

  def most_common_allergen
  #  should return the ingredient instance that
  # the highest number of users are allergic to
  end

end
