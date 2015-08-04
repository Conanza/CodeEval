# N MOD M
# CHALLENGE DESCRIPTION:
#
# Given two integers N and M, calculate N Mod M (without using any inbuilt modulus operator).
#
# INPUT SAMPLE:
# Your program should accept as its first argument a path to a filename. Each line in this file contains two comma separated positive integers. E.g.
# 20,6
# 2,3
# You may assume M will never be zero.
#
# OUTPUT SAMPLE:
# Print out the value of N Mod M

def n_mod_m(n, m)
  n - (n / m) * m
end

File.new(ARGV[0]).each_line do |line|
  numbers = line.chomp.split(",").map(&:to_i)

  puts n_mod_m(*numbers)
end

p n_mod_m(20, 6) == 20 % 6
p n_mod_m(2, 3) == 2 % 3
p n_mod_m(21, 6) == 21 % 6
p n_mod_m(30, 6) == 30 % 6
p n_mod_m(251, 13) == 251 % 13
