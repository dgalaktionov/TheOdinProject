def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, n=2)
  r = s + " "
  r*(n-1) + s
end

def start_of_word(s, n)
  s[0,n]
end

def first_word(s)
  s.split[0]
end

def titleize(s)
  little_words = ["and", "over", "for", "the"].sort!
  words = s.split.map {|i| little_words.index(i.downcase) ? i : i.capitalize}
  
  if words.length > 0
    words[0].capitalize!
  end
  
  words * " "
end