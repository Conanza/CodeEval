# The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n–1) + F(n–2) when n>1. Given an integer n≥0, print out the F(n).
#
# INPUT SAMPLE:
# The first argument will be a path to a filename containing integer numbers, one per line. E.g.
# 5
# 12
#
# OUTPUT SAMPLE:
# Print to stdout, the fibonacci number, F(n). E.g.
# 5
# 144

class Cache
  attr_reader :store

  def initialize(max_size, &prc)
    @store = {}
    @max_size, @prc = max_size, prc
  end

  def [](key)
    if @store.has_key?(key)
      value = @store.delete(key)
    else
      eject! if @store.length == @max_size
      value = @prc.call(key)
    end
    @store[key] = value

    value
  end

  def eject!
    key, _ = @store.first
    @store.delete(key)
  end
end

fib_cached = Cache.new(20) do |num|
  if num == 0
    0
  elsif num == 1
    1
  else
    fib_cached[num - 1] + fib_cached[num - 2]
  end
end

File.new(ARGV[0]).each_line do |line|
  number = Integer(line)

  puts fib_cached[number]
end
