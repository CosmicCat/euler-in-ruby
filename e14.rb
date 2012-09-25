# The following iterative sequence is defined for the set of positive integers:

# n  n/2 (n is even)
# n  3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

class StartNumAndNumTerms
  def initialize(start, numTerms)
    @start = start
    @numTerms = numTerms
  end

  attr_accessor :start, :numTerms
end

def nextNum(num)
  if num % 2 == 0
    return num/2
  end
  return 3 * num + 1
end

results = []

for i in 2..1000000
  num = i
  numTerms = 1
  while num > 1
    num = nextNum(num)
    numTerms += 1
  end
  results.push StartNumAndNumTerms.new(i, numTerms)
end

largestStart = 0
largestNumOfTerms = 0

results.each do |x|
  if x.numTerms > largestNumOfTerms
    largestStart = x.start
    largestNumOfTerms = x.numTerms
  end
end

puts largestStart
puts largestNumOfTerms
