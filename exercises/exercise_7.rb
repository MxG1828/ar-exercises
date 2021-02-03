require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :hourly_rate, :numericality => {:greater_than_or_equal_to =>40}
  validates :hourly_rate, :numericality => {:less_than_or_equal_to =>200}
end
class Store
  validates :name, :length => {:minimum => 3}
  validates :annual_revenue, :numericality => {:only_integer => true, :minimum => 0}
end

input = gets.chomp

test = Store.create(name: input)
puts test.errors.full_messages
