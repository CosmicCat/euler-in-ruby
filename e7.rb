# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def prime?(x)
  for i in 2..Math.sqrt(x).floor
    return false if x % i == 0
  end
  return true
end

i = 13
primesCount = 6
while primesCount < 10001
  i += 1
  primesCount += 1 if prime?(i)
end

puts i
