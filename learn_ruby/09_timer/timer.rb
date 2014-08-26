class Timer
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def padded(n)
    s = n.to_s
    s.length < 2 ? s.prepend("0") : s
  end
  
  def time_string
    "#{padded(@seconds/3600)}:#{padded((@seconds/60)%60)}:#{padded(@seconds%60)}"
  end
end