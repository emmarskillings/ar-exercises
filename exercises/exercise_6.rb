require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(
  first_name: "Harry",
  last_name: "Potter",
  hourly_rate: 15
)

@store1.employees.create(
  first_name: "Ginny",
  last_name: "Weasley",
  hourly_rate: 20
)

@store2.employees.create(
  first_name: "Dobby",
  last_name: "The Elf",
  hourly_rate: 0
)

@store2.employees.create(
  first_name: "Ron",
  last_name: "Weasley",
  hourly_rate: 10
)

@store2.employees.create(
  first_name: "Hermione",
  last_name: "Granger",
  hourly_rate: 25
)
