class Dog
  attr_accessor :name, :breed, :age, :bark, :favorite_foods

  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def bark
    return @bark.upcase if age > 3
    return @bark.downcase
  end

  def favorite_food?(string)
    favorite_foods.each { |el| return true if el.downcase == string.downcase }
    return false
  end
end
