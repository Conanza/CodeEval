# Write a program which reverses the words in an input sentence.
#
# INPUT SAMPLE:
# The first argument is a file that contains multiple sentences, one per line. Empty lines are also possible.
# For example:
# Hello World
# Hello CodeEval
#
# OUTPUT SAMPLE:
# Print to stdout each sentence with the reversed words in it, one per line.
# Empty lines in the input should be ignored.
# Ensure that there are no trailing empty spaces in each line you print.
# For example:
# World Hello
# CodeEval Hello

def reverse_words(words)
  string = ""

  (words.length - 1).downto(0) do |i|
    string += "#{words[i]} "
  end

  string.chomp
end

File.new(ARGV[0]).each_line do |line|
  next if line.strip.length == 0

  puts reverse_words(line.strip.split(" "))
end
