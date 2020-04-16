# Exercise 3

module Towable
  def can_tow?(lbs, num_of_wheels)
    lbs < 4500 * num_of_wheels
  end
end

class Vehicle
  attr_accessor :color

  @@children_count = 0

  def self.display_children_count
    puts "Class #{self} has #{@@children_count} children."
  end

  def initialize(color)
    @color = color
    @speed = 0
    @@children_count += 1
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
  include Towable

  attr_reader :year

  VEHICLE = 'truck'.freeze

  def self.mpg(miles, gallons)
    miles.to_f / gallons
  end

  def self.gas_mileage(miles, gallons)
    mpg = mpg(miles, gallons)
    puts "#{mpg} miles per gallon"
  end

  def can_tow?(lbs)
    super(lbs, @wheels)
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
