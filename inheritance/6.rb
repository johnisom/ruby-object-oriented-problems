# Exercise 6

# Exercise 5

module Towable
  def can_tow?(lbs, num_of_wheels)
    lbs < 4500 * num_of_wheels
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :model, :year

  @@children_count = 0

  def self.mpg(miles, gallons)
    miles.to_f / gallons
  end

  def self.gas_mileage(miles, gallons)
    mpg = mpg(miles, gallons)
    puts "#{mpg} miles per gallon"
  end

  def self.display_children_count
    puts "Class #{self} has #{@@children_count} children."
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@children_count += 1
  end

  def current_speed
    @speed
  end

  def speed_up(amount)
    @speed += amount
    puts "Whoa! Now we're speeding up!"
  end

  def brake(amount)
    @speed -= amount
    "Whew, we're finally slowing down."
  end

  def shut_down
    @speed = 0
    "Time to park, bois."
  end

  def spray_paint(color)
    self.color = color
    puts "I hope you're liking your new #{color} paint job!"
  end

  def to_s
    "#{color.capitalize} #{year} #{@model}"
  end

  def age
    "Your #{model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - year
  end
end

class MyCar < Vehicle
  VEHICLE = 'car'.freeze

  def to_s
    super + " #{VEHICLE}"
  end
end

class MyTruck < Vehicle
  include Towable

  attr_reader :wheels

  VEHICLE = 'truck'.freeze

  def can_tow?(lbs)
    super(lbs, wheels)
  end

  def initialize(year, color, model, wheels = 18)
    super(year, color, model)
    @wheels = wheels
  end

  def to_s
    super + "#{wheels}-wheeler #{VEHICLE}"
  end
end

