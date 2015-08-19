# Write a program to determine the largest sum of contiguous integers in a list.
#
# INPUT SAMPLE:
# The first argument is a path to a filename containing a comma-separated list of integers, one per line.
# For example:
# -10,2,3,-2,0,5,-15
# 2,3,-2,-1,10
#
# OUTPUT SAMPLE:
# Print to stdout the largest sum. In other words, of all the possible contiguous subarrays for a given array, find the one with the largest sum, and print that sum.
# For example:
# 8
# 12

def max_contiguous_sum(nums)
  max_sum, sum, i = nums[0], 0, 0

  while i < nums.length
    sum += nums[i]

    if sum > max_sum
      max_sum = sum
    end

    if sum < 0
      sum = 0
    end

    i += 1
  end

  max_sum
end

File.new(ARGV[0]).each_line do |line|
  puts max_contiguous_sum(line.chomp.split(",").map(&:to_i))
end
