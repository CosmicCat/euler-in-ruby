# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythag(a, b)
  return Math.sqrt(a**2 + b**2)
end

a=1
b=2
c=pythag(a,b)

while true
  while a + b + c < 1000
    b += 1
    c = pythag(a,b)
    if  (a + b + c) == 1000
      puts a*b*c
      abort
    end
  end
  a += 1
  b = a + 1
end
