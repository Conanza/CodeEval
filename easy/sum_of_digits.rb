# Given a positive integer, find the sum of its constituent digits.
#
# INPUT SAMPLE:
# The first argument will be a path to a filename containing positive integers, one per line. E.g.
# 23
# 496
# OUTPUT SAMPLE:
# Print to stdout, the sum of the numbers that make up the integer, one per line. E.g.
# 5
# 19

def print_sum_of_digits(num)
  sum = 0
  num.chars.each { |digit| sum += digit.to_i }
  puts sum
end

File.new(ARGV[0]).each_line do |line|
  print_sum_of_digits(line.chomp)
end
