# Exercise 1

class Vehicle
  attr_accessor :color

  def initialize(color)
    @color = color
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
  end

  def to_s
    color.capitalize
  end
end

class MyCar < Vehicle
  attr_reader :year

  VEHICLE = 'car'.freeze

  def self.mpg(miles, gallons)
    miles.to_f / gallons
  end

  def self.gas_mileage(miles, gallons)
    mpg = mpg(miles, gallons)
    puts "#{mpg} miles per gallon"
  end

  def initialize(year, color, model)
    super(color)
    @year = year
    @model = model
  end

  def spray_paint(color)
    super
    puts "Your #{VEHICLE} is now the color #{color}"
  end

  def to_s
    super + " #{year} #{@model} #{VEHICLE}"
  end
end

class MyTruck < Vehicle
  attr_reader :year

  VEHICLE = 'truck'.freeze

  def self.mpg(miles, gallons)
    miles.to_f / gallons
  end

  def self.gas_mileage(miles, gallons)
    mpg = mpg(miles, gallons)
    puts "#{mpg} miles per gallon"
  end

  def initialize(year, color, model, wheels=18)
    super(color)
    @year = year
    @model = model 
    @wheels = wheels
  end

  def spray_paint(color)
    super
    puts "Your #{@wheels}-wheeler #{VEHICLE} is now the color #{color}"
  end

  def to_s
    super + " #{year} #{@model} #{@wheels}-wheeler #{VEHICLE}"
  end
end
