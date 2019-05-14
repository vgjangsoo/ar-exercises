require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)
average_revenue = Store.sum(:annual_revenue) / Store.count

puts "Total revenue for the stores: #{total_revenue}."
puts "Average revenue for the stores: #{average_revenue}."

million_revenue_stores = Store.where("annual_revenue > ?", [1_000_000]).count

puts "The number of stores with over 1 million dollars in revenue: #{million_revenue_stores}."