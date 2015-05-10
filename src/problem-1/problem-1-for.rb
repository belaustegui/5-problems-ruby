#!/usr/bin/env ruby

# Sum the numbers of a given list using a for loop
def solve(number_list)
  sum = 0
  for num in number_list do
    sum += num
  end
  sum
end

require_relative 'number-list'
puts solve(NUMBER_LIST)
