require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end
class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "first", last_name: "1", hourly_rate: 61)
@store2.employees.create(first_name: "second", last_name: "2", hourly_rate: 62)
@store2.employees.create(first_name: "third", last_name: "3", hourly_rate: 63)
