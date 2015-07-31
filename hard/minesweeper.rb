# CHALLENGE DESCRIPTION:
#
# You will be given an M*N matrix. Each item in this matrix is either a '*' or a '.'.
# A '*' indicates a mine whereas a '.' does not.
# The objective of the challenge is to output a M*N matrix where each element
# contains a number (except the positions which actually contain a mine which will remain as '*')
# which indicates the number of mines adjacent to it.
# Notice that each position has at most 8 adjacent positions e.g. left, top left, top, top right, right, ...
#
# INPUT SAMPLE:
# Your program should accept as its first argument a path to a filename.
# Each line in this file contains M,N, a semicolon and the M*N matrix in row major form. E.g.
# 3,5;**.........*...
# 4,4;*........*......
#
# OUTPUT SAMPLE:
# Print out the new M*N matrix (in row major form) with each position(except the ones with the mines)
# indicating how many adjacent mines are there. E.g.
# **100332001*100
# *10022101*101110

SURROUNDING_POSITIONS = [
  [-1, 0],
  [-1, -1],
  [0, -1],
  [1, -1],
  [1, 0],
  [1, 1],
  [0, 1],
  [-1, 1]
]

def display_mine_counts(m, n, string)
  board = {}
  mine_positions = []
  string.chars.each_with_index do |char, i|
    pos = [i / n, i % n]
    board[pos] = char == "*" ? "*" : 0

    mine_positions << pos if char == "*"
  end

  mine_positions.each do |pos|
    SURROUNDING_POSITIONS.each do |surr_pos|
      new_pos = [pos[0] + surr_pos[0], pos[1] + surr_pos[1]]
      next if board[new_pos].nil?

      board[new_pos] += 1 if board[new_pos].is_a?(Integer)
    end
  end

  board.each { |pos, v| print v }
end


File.new(ARGV[0]).each_line do |line|
  size, board = line.chomp.split(";")
  m, n = size.split(",").map(&:to_i)

  display_mine_counts(m, n, board)
  puts
end
