require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

s4 = Store.new
s4.name = "Surrey"
s4.annual_revenue = 224000
s4.mens_apparel = false
s4.womens_apparel = true
s4.save

s5 = Store.new
s5.name = "Whistler"
s5.annual_revenue = 1900000
s5.mens_apparel = true
s5.womens_apparel = false
s5.save

s6 = Store.new
s6.name = "Yaletown"
s6.annual_revenue = 430000
s6.mens_apparel = true
s6.womens_apparel = true
s6.save

@mens_stores = Store.select(:name, :annual_revenue).where(mens_apparel: true)

@mens_stores.each do |store|
  store.name
  store.annual_revenue
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}."
end

@womens_apparel = Store.select(:name, :annual_revenue).where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@womens_apparel.each do |store|
  store.name
  store.annual_revenue
  puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}."
end
