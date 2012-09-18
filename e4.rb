# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(x)
  s = x.to_s
  for i in 0..s.length/2
    return false if s[i] != s[s.length-i-1]
  end
  return true
end

palindromes = []

for i in 100..999
  for j in 100..999
    palindromes.push(i*j) if palindrome?(i*j)
  end
end

puts palindromes.max
