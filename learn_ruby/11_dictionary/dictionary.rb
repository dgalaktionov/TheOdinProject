class Dictionary < Hash
  def entries
    return self
  end
  
  def keywords
    keys.sort
  end
  
  def add(stuff)
    if stuff.is_a? String
      self[stuff] = nil
    else
      update(stuff)
    end
  end
  
  def find(s)
    select {|k,v| k.include?(s)}
  end
  
  def printable
    r = []
    
    for k in keywords
      r << "[#{k}] \"#{self[k]}\""
    end
    
    r * "\n"
  end
end