# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def divides_them_all?(x)
  for i in 2..20
    return false unless x % i == 0
  end
  return true
end

# have to start somewhere
num = 20
while true
  if divides_them_all?(num)
    puts num
    abort
  end
  num += 1
end
