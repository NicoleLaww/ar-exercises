require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Creating employees 
@store1.employees.create(first_name:"Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name:"Sean", last_name: "Lee", hourly_rate: 40)
@store2.employees.create(first_name:"Rak", last_name: "Con", hourly_rate: 100)
@store2.employees.create(first_name:"Chippy", last_name: "Munk", hourly_rate: 200)
