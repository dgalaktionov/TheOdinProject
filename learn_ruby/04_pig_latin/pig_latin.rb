def translate_word(s)
  n = s.length

  if n == 0
    return
  end
  
  if s.chr[/[aeiou]/]
    s << "ay"
  else
    start_cons = s[/(qu|[^aeiou])+/]
    s[start_cons.length,n] + start_cons + "ay"
  end
end

def translate(s)
  s.split.map {|i|translate_word(i)} * " "
end