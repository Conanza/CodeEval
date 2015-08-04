# Print out the sum of integers read from a file.
#
# INPUT SAMPLE:
# The first argument to the program will be a path to a filename containing a positive integer, one per line. E.g.
# 5
# 12
# OUTPUT SAMPLE:
# Print out the sum of all the integers read from the file. E.g.
# 17

sum = 0
File.new(ARGV[0]).each_line do |line|
  sum += Integer(line)
end

print sum
