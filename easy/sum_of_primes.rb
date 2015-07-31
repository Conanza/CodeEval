# SUM OF PRIMES
# CHALLENGE DESCRIPTION:
# Write a program which determines the sum of the first 1000 prime numbers.
#
# INPUT SAMPLE:
# There is no input for this program.
#
# OUTPUT SAMPLE:
# Print to stdout the sum of the first 1000 prime numbers.

def is_prime?(num)
  return true if num == 2
  (2..Math.sqrt(num).round).each do |div|
    return false if num % div == 0
  end
  true
end

# p is_prime?(2) == true
# p is_prime?(3) == true
# p is_prime?(5) == true
# p is_prime?(7) == true
# p is_prime?(12) == false
# p is_prime?(41) == true
# p is_prime?(12) == false
# p is_prime?(21) == false
# p is_prime?(20) == false
# p is_prime?(16) == false

def sum_of_primes(n)
  count, sum, num = 0, 0, 2
  while count < n
    if is_prime?(num)
      sum += num
      count += 1
    end

    num += 1
  end

  sum
end

print sum_of_primes(1000)
