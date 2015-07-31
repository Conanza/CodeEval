# Write a program which finds the first non-repeated character in a string.
#
# INPUT SAMPLE:
# The first argument is a path to a file. The file contains strings.
# For example:
# yellow
# tooth
#
# OUTPUT SAMPLE:
# Print to stdout the first non-repeated character, one per line.
# For example:
# y
# h

def non_repeated_letters(file)
  word_cache = {}
  File.new(file).each_line do |line|
    word = line.chomp
    if word_cache[word]
      puts word_cache[word]
    else
      letter = find_non_repeated_letter(word)
      word_cache[word] = letter
      puts letter
    end
  end
end

def find_non_repeated_letter(string)
  letter_counts = Hash.new(0)
  string.chars.each { |char| letter_counts[char] += 1 }

  letter_counts.find { |ltr, ct| ct == 1 }[0]
end

non_repeated_letters(ARGV[0])
