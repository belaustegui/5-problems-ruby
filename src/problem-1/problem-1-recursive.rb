#!/usr/bin/env ruby

# Sum the numbers of a given list using a recursive function
# This is done manually for learning purposes
# The proper way is shown in 'problem-1-proper.rb'
def solve(number_list, sum = 0)
  return sum if number_list.empty?

  first, *rest = number_list
  return solve(rest, sum + first)
end

require_relative 'number-list'
puts solve(NUMBER_LIST)
