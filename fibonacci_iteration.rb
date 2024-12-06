def fibs(n)
  fib_array = []
  n.times do |i|
    if i == 0 || i == 1
      fib_array.push(i)
    else
      fib_array.push((i-1 + i-2))
    end
  end
  fib_array
end

puts "Welcome to fibonacci sequence calculator"
puts "How many number of the sequence do you want to see?"
n = gets.to_i

p fibs(n)