#!/usr/bin/env ruby

@solutions = []

# Calculate all the posibilities to put +, - or nothing between the given numbers
# (in the given order) such as the result is the expected.
def solve(nums, expected_res, seq = '')
  # When all numbers have been used, save the obtained sequence if it is valid
  # and stop the calculation.
  if nums.empty?
    @solutions.push seq if eval(seq) == expected_res
    return
  end
  head, *tail = nums
  # This check is made in order to avoid results starting with 1... and +1...
  # which, in spite of being different, represent the same operational sequence
  return solve(tail, expected_res, head.to_s) if seq.empty?

  solve(tail, expected_res, seq + head.to_s)
  solve(tail, expected_res, seq + '+' + head.to_s)
  solve(tail, expected_res, seq + '-' + head.to_s)
end


solve((1..9).to_a, 100)
puts @solutions
