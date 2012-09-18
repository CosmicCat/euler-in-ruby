n1 = 1
n2 = 2
sumOfEvens = 2

until n2 >= 4000000
  fibNext = n1 + n2
  n1 = n2
  n2 = fibNext
  if n2 % 2 == 0
    sumOfEvens += n2
  end
end

puts sumOfEvens
