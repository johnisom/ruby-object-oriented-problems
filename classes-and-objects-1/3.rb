# Exercise 3

class MyCar
  attr_accessor :color
  attr_reader :year

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
