require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_stores = Store.count(:stores)
@total_revenue = Store.sum(:annual_revenue)
@average_revenue = @total_revenue / @total_stores

puts @total_revenue
puts @average_revenue

@highest_revenue = Store.where("annual_revenue >= ?", 1000000).count(:stores)

puts @highest_revenue
