# Exercise 1

class MyCar
  attr_accessor :color
  attr_reader :year

  def self.mpg(miles, gallons)
    miles.to_f / gallons
  end

  def self.gas_mileage(miles, gallons)
    mpg = mpg(miles, gallons)
    puts "#{mpg} miles per gallon"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(amount)
    @speed += amount
  end

  def brake(amount)
    @speed -= amount
  end

  def shutoff
    @speed = 0
  end

  def spray_paint(color)
    self.color = color
    puts "Your car is now the color #{self.color}"
  end
end
