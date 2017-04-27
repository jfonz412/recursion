# Fibonacci Sequence: 1,1,2,3,5,8,13,21,34,55,89,144 ect...
# number is summed with the one before it

def fibs(n)
  a = 0
  b = 1
  c = 2
  fib_array = [1,1]

  n.times do
    fib_array[c] = fib_array[a] + fib_array[b] 
    a += 1
    b += 1
    c += 1
  end

  fib_array.pop(2)
  fib_array
end

def fibs_rec(n, array = [1,1])
  return array if n == 2
  array << array[-2] + array[-1]
  fibs_rec(n-1, array)
 end

puts fibs(8)
puts "Recursive:"
puts fibs_rec(8)