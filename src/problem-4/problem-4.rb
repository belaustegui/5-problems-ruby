#!/usr/bin/env ruby

# Given a list of non-negative numbers, arranges them in such a way that they
# provide the greatest number.  Given [50, 2, 1, 9] returns 95021
def solve(nums)
  sorted = nums.sort do |num_l, num_r|
    # Combine the two numbers.  For example: with 50 and 5 we will get
    # "505" and "550"
    left_to_right = num_l.to_s + num_r.to_s
    right_to_left = num_r.to_s + num_l.to_s
    # The default sorting order is to put the smaller items first.  We make the
    # check the other way so we put first the item that makes the greatest
    # combination.  In this case the sorting would be: 5 and 50
    right_to_left <=> left_to_right
  end
  sorted.join()
end

puts "[50, 2, 1, 9] => " + solve([50, 2, 1, 9])
puts "[5, 50, 56] => " + solve([5, 50, 56])
puts "[420, 42, 423] => " + solve([420, 42, 423])
