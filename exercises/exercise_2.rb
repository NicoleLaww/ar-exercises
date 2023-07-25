require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store (with id = 1) from the database and assign it to @store1
@store1 = Store.find(1)
# Can use this syntax for PK, which is id 

# Load the second store from the database and assign it to @store2
@store2 = Store.find_by(id: 2)
# Can use this syntax for NOT PK

# Update the first store (@store1) instance in the database (change its name)
@store1.name = "Toronto"
@store1.save 

puts @store1.name
puts @store2.name