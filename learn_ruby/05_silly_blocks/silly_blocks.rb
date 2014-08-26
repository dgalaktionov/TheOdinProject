def reverser
  yield.split.map {|i| i.reverse!} * " "
end

def adder(n=1)
  yield+n
end

def repeater(n=1)
  n.times do
    yield
  end
end