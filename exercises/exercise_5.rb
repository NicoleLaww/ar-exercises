require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Sum 
@total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue of All Stores: $#{@total_revenue}"

# Count 
@store_count = Store.count

# Average
@average_annual_revenue = @total_revenue / @store_count
puts "Average Annual Revenue: $#{@average_annual_revenue}" 

@a_a_r = Store.average(:annual_revenue)
puts "AAR: $#{@a_a_r}" 

# Chaining [Size/Count]

# @store_count_over_1m_revenue = Store.where("annual_revenue > ?", 1000000).count
# puts "Count of store with over 1M revenue: #{@store_count_over_1m_revenue}"
# More efficient, loads only records that meet criteria

@store_count_over_1m_revenue = Store.where("annual_revenue > ?", 1000000).size
puts "Count of store with over 1M revenue: #{@store_count_over_1m_revenue}"
# Slower, load all records





