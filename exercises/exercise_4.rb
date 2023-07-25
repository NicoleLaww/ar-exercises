require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create three new stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Use where to fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through men's stores and output name and annual revenue
@mens_stores.each do |store|
  puts "Store Name: #{store.name}, Store Annual Revenue: #{store.annual_revenue}"
end 

# Fetch stores that carry women's apparel and have annual revenue less than $1M
@low_womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)
# String to defend against SQL injections 