# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

range = 1..100

sumOfTheSquares = range.to_a.reduce(0) {|sum, n| sum + n**2}

squareOfTheSums = range.to_a.reduce(:+) ** 2

puts squareOfTheSums - sumOfTheSquares 
