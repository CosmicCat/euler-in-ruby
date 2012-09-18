input = 600851475143

def prime?(x)
  for i in 2..x-1
    return false if x % i == 0
  end
  return true
end

for i in 2..input
  if input % i == 0
    puts "found potential: #{input/i}"
    if prime?(input/i)
      puts input/i
      break
    end
  end
end

