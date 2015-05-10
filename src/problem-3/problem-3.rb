#!/usr/bin/env ruby

# This variable contains precomputed values for the Fibonacci sequence in order
# to avoid recalculating them multiple times.
$precomputed = [0, 1];

# Calculate the number in the given position of the Fibonacci sequence
def solve(position)
  return $precomputed[position] if !$precomputed[position].nil?
  result = solve(position -1) + solve(position - 2)
  $precomputed[position] = result
  return result
end

puts solve 100
