class RPNCalculator
  def initialize
    @stack = []
  end
  
  def push(n)
    @stack << n
  end
  
  def value
    @stack[-1]
  end
  
  def plus
    @stack << (@stack.pop + @stack.pop)
  end
  
  def minus
    @stack << (-@stack.pop + @stack.pop)
  end
end