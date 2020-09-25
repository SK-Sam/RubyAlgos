
def fibonacci(n)
  return n if n < 2
  return fibonacci(n-1) + fibonacci(n-2)
end


puts fibonacci(8)
