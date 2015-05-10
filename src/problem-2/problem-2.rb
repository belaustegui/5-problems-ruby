#!/usr/bin/env ruby

# Combine two list by alternatinly take elements.
# This is done manually for learning purposes
# The proper way is shown in 'problem-2-proper.rb'
def solve(list_a, list_b, combined = [])
  return combined if list_a.empty? || list_b.empty?
  head_a = list_a.shift
  head_b = list_b.shift
  return solve(list_a, list_b, combined.concat([head_a, head_b]))
end

require_relative 'lists'
puts solve(LIST_A, LIST_B)
