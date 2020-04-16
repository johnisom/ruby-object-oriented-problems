# Exercise 3

# We get the NoMethodError because the attr_reader only allows you
# to access instance variables, not assign them. attr_reader :name
# is short for
# def name
#   @name
# end
# and does nothing for the name= method (assignment).
# To fix it, we would want to do one of 3 things: change
# attr_reader to attr_writer, attr_reader to attr_accessor,
# or define our own writer method like so:
# def name=(n)
#   @name = n
# end

# here is the fix implemented:

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new('Steve')
bob.name = 'Bob' # throws no error
