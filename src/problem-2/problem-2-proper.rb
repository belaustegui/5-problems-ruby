#!/usr/bin/env ruby

# Combine two list by alternatinly take elements (the propery way).
def solve(list_a, list_b)
  return list_a.zip(list_b).flatten
end

require_relative 'lists'
puts solve(LIST_A, LIST_B)
