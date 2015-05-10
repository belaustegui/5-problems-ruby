#!/usr/bin/env ruby

# Sum the numbers of a given list the ruby way
def solve(number_list)
  number_list.reduce do |sum, num|
    sum + num
  end
end

require_relative 'number-list'
puts solve(NUMBER_LIST)
