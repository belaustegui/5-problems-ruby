#!/usr/bin/env ruby

# Calculate the Fibonacci sequence up to the number in the given position
# Instead of using the traditional recursive solution, wich has a complexity of
# O(n^2), the use of a list to store the already calculated values reduces the
# complexity to O(n).
def solve(number)
  @sequence = [0, 1]
  (2 ... number).each do |position|
    @sequence[position] = @sequence[position - 1] + @sequence[position - 2]
  end
  @sequence
end

solve(100).each_with_index do |item, index|
  puts "#{index + 1} => #{item}"
end
