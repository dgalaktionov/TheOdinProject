class Book
  attr_accessor :title
  
  def initialize
  end
  
  def title=(new_title)
    dont_cap = ["and", "over", "for", "the", "a", "an", "of", "in"].sort!
    always_cap = ["I"].sort!
    words = new_title.split.map {|i| always_cap.index(i.capitalize) ||
      !dont_cap.index(i.downcase) ? i.capitalize : i }
    
    if words.length > 0
      words[0].capitalize!
    end
    
    @title = words * " "
  end
end