# Write a program which implements a stack interface for integers.
# The interface should have ‘push’ and ‘pop’ functions.
# Your task is to ‘push’ a series of integers and then ‘pop’ and print every alternate integer.
#
# INPUT SAMPLE:
# Your program should accept a file as its first argument. The file contains a series of space delimited integers, one per line.
# For example:
# 1 2 3 4
# 10 -2 3 4
#
# OUTPUT SAMPLE:
# Print to stdout every alternate space delimited integer, one per line.
# For example:
# 4 2
# 4 -2
class Stack
  def initialize
    @store = []
  end

  def length
    @store.length
  end

  def pop
    @store.pop
  end

  def push(num)
    @store.push(num)
  end
end

File.new(ARGV[0]).each_line do |line|
  stack = Stack.new
  line.split(" ").each do |num|
    stack.push(num.to_i)
  end

  store = []
  stack.length.times do |i|
    num = stack.pop
    store << num if i.even?
  end

  puts store.join(" ")
end
