require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Saul", last_name: "Lee", hourly_rate: 30)
@store1.employees.create(first_name: "Kanye", last_name: "West", hourly_rate: 160)

@store2.employees.create(first_name: "Bob", last_name: "Last", hourly_rate: 100)
@store2.employees.create(first_name: "Kevin", last_name: "Smith", hourly_rate: 200)
