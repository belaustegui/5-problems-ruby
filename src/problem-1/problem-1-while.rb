#!/usr/bin/env ruby

# Sum the numbers of a given list using a while loop
# This is done manually for learning purposes
# The proper way is shown in 'problem-1-proper.rb'
def solve(number_list)
  sum = 0
  position = 0
  while position < number_list.length do
    sum += number_list[position]
    position += 1
  end
  sum
end

require_relative 'number-list'
puts solve(NUMBER_LIST)
