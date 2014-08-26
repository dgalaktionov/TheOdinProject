def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(a)
  s = 0
  
  for i in a
    s+=i
  end
  
  s
end

def multiply(m, *n)
  for i in n
    m*=i
  end
  
  m
end

def power(a,b)
  a**b
end

def factorial(n)
  if n == 0
    1
  elsif n > 0
    n*factorial(n-1)
  else
    nil
  end
end