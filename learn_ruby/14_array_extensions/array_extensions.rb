class Array
  def sum
    s = 0
    
    for i in self
      s += i
    end
    
    s
  end
  
  def square
    self.map {|i|i*i}
  end
  
  def square!
    self.map! {|i|i*i}
  end
end