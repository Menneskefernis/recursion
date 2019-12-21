def fibs(n)
  a = 0
  b = 1  
  fib_nums = []
  
  n.times do
    temp = b  
    b = a + b
    a = temp
    fib_nums << a
  end
  fib_nums
end

def fibs_rec(n, result = [1, 1])
  if n == 0 || n == 1
    return n
  end
  
  if n > 2
    result << result[-1] + result[-2]
    fibs_rec(n - 1, result)
  end
  result
end

#puts fibs(10)
puts fibs_rec(3)