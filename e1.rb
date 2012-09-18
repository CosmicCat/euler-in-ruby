sumOfMultiplesOf3and5 = 0
for i in 1..999
  if (i % 3 == 0) or (i % 5 == 0)
    sumOfMultiplesOf3and5 += i
  end
end
puts sumOfMultiplesOf3and5
