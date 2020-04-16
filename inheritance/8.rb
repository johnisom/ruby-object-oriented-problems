# Exercise 8

bob = Person.new
bob.hi

# The problem is that the Person#hi method is only available for private access.
# To overcome this problem, we must either change it to public, or change
# it to protected and then have a public getter method for that protected
# method.

# solution:
class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # public

  def hi
    puts "#{name} says hi!"
  end
end
