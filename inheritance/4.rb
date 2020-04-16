# Exercise 3

load '3.rb'

def print_method_lookup(cls)
  puts "Method lookup chain for #{cls}: #{cls.ancestors}"
end

print_method_lookup(Vehicle)
print_method_lookup(MyCar)
print_method_lookup(MyTruck)
