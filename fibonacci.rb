def fibs(n)
  fib_array = []
  n.times do |i|
    if i == 0 || i == 1
      fib_array.push(i)
    else
      fib_array.push((fib_array[i-1])+(fib_array[i-2]))
    end
  end
  fib_array
end

def fibs_rec(n)
  
  return [] if n < 1
  return [0] if n == 1
  return [0, 1] if n == 2
    
  fib_array = fibs_rec(n-1)
  fib_array << (fib_array[-1] + fib_array[-2])
  return fib_array
end

puts "Welcome to fibonacci sequence calculator"
puts "How many number of the sequence do you want to see?"
n = gets.to_i
p fibs_rec(n)