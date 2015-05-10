#!/usr/bin/env ruby

# Sum the numbers of a given list using a for loop
# This is done manually for learning purposes
# The proper way is shown in 'problem-1-proper.rb'
def solve(number_list)
  sum = 0
  for num in number_list do
    sum += num
  end
  sum
end

require_relative 'number-list'
puts solve(NUMBER_LIST)
