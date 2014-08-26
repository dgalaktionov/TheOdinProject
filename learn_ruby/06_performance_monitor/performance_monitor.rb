def measure(n=1)
  t0 = Time.now
  
  n.times do
    yield
  end
  
  (Time.now - t0)/n
end