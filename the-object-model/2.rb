# Exercise 2

=begin

A module is a collection of methods with a purpose of being mixed in to
other classes using the keyword include. The class then inherits the methods
that were in the module and it's added to the method lookup chain, right below
the class itself. Example module below:

=end
module CoolModuleNamedWithCamelCase
  def say_hello(msg='world')
    puts 'hello ' + msg
  end
end

class CoolClassNamedWithCamelCase
  include CoolModuleNamedWithCamelCase
end

hello_machine = CoolClassNamedWithCamelCase.new

hello_machine.say_hello     # => outputs hello world
