# The sentence 'A quick brown fox jumps over the lazy dog' contains every single letter in the alphabet.
# Such sentences are called pangrams. You are to write a program, which takes a sentence,
# and returns all the letters it is missing (which prevent it from being a pangram).
# You should ignore the case of the letters in sentence, and your return should be all lower case letters, in alphabetical order.
# You should also ignore all non US-ASCII characters.In case the input sentence is already a pangram, print out the string NULL
#
# INPUT SAMPLE:
# Your program should accept as its first argument a path to a filename. This file will contain several text strings, one per line. E.g.
# A quick brown fox jumps over the lazy dog
# A slow yellow fox crawls under the proactive dog
#
# OUTPUT SAMPLE:
# Print out all the letters each string is missing in lowercase, alphabetical order . E.g.
# NULL
# bjkmqz

File.open(ARGV[0]).each_line do |line|
  alphabet = Hash[("a".."z").to_a.zip([true] * 26)]

  (0...line.length).each do |i|
    alphabet.delete(line[i].downcase)
  end

  if alphabet.length == 0
    puts "NULL"
  else
    puts alphabet.keys.join("")
  end
end
