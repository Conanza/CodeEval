# INPUT SAMPLE:
# Your program should accept a file as its first argument.
# The file contains multiple separated lines; each line contains 3 numbers that are space delimited.
# The first number is the first divider (X), the second number is the second divider (Y),
# and the third number is how far you should count (N).
# You may assume that the input file is formatted correctly and the numbers are valid positive integers.
#
# For example:
# 1: 3 5 10
# 2: 2 7 15
#
# OUTPUT SAMPLE:
# Print out the series 1 through N replacing numbers divisible by X with “F”,
# numbers divisible by Y with “B” and numbers divisible by both with “FB”.
# Since the input file contains multiple sets of values, your output should print out one line per set.
# Ensure that there are no trailing empty spaces in each line you print.
# 1: 1 2 F 4 B F 7 8 F B
# 2: 1 F 3 F 5 F B F 9 F 11 F 13 FB 15
#
# CONSTRAINTS:
# The number of test cases ≤ 20
# "X" is in range [1, 20]
# "Y" is in range [1, 20]
# "N" is in range [21, 100]

=begin
 Sample code to read in test cases:
File.open(ARGV[0]).each_line do |line|
# Do something with line, ignore empty lines
#...
end
=end

def fizzbuzzgenerator(file)
  lines = File.readlines(file)
  lines.each do |line|
    next if line.length == 0
    x, y, n = line.chomp.split(" ")
    print_fizz_buzz(x.to_i, y.to_i, n.to_i)
    puts
  end
end

def print_fizz_buzz(x, y, n)
  string = ""
  (1..n).each do |num|
    if num % x == 0
      string += "F"
      string += "B" if num % y == 0
      string += " "
    elsif num % y == 0
      string += "B "
    else
      string += "#{num} "
    end
  end

  print string.strip
end


fizzbuzzgenerator(ARGV[0]) unless ARGV[0].nil?
