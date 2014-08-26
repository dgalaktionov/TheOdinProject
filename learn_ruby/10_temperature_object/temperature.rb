class Temperature
  def ftoc(t)
    ((t-32)*5)/9.0
  end

  def ctof(t)
    (t*9)/5.0+32
  end
  
  def self.from_celsius(t)
    Temperature.new(:c => t)
  end
  
  def self.from_fahrenheit(t)
    Temperature.new(:f => t)
  end
  
  def initialize(options)
    if options[:c]
      @t = options[:c]
     elsif options[:f]
      @t = self.ftoc(options[:f])
    end
  end
  
  def in_celsius
    @t
  end

  def in_fahrenheit
    self.ctof(@t)
  end
end

class Celsius < Temperature
  def initialize(t)
    super(:c => t)
  end
end

class Fahrenheit < Temperature
  def initialize(t)
    super(:f => t)
  end
end