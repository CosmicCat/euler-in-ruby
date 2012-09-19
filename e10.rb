# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

def prime?(x)
  for i in 2..Math.sqrt(x).floor
    return false if x % i == 0
  end
  return true
end

primesSum = 0
for i in 2..2000000
  primesSum += i if prime?(i)
end

puts primesSum
