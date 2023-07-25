require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask user for store name 
print "Please enter the store name..."
store_name = gets.chomp

# Attempt to create a store with the inputted name but leave out the other fields 
new_store = Store.new(name: store_name)
# Create will save also in this step, new won't 

# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
if new_store.save
  puts "Store #{new_store.name} successfully created"
else 
  puts "Err creating the store.."
  new_store.errors.full_messages.each do |err| 
    puts " - #{err}"
  end 
end 
