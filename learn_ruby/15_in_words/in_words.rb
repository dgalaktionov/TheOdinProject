class Fixnum
  def in_words
    case self
    when 0
      "zero"
    when 1
      "one"
    when 2
      "two"
    when 3
      "three"
    when 4
      "four"
    when 5
      "five"
    when 6
      "six"
    when 7
      "seven"
    when 8
      "eight"
    when 9
      "nine"
    when 10
      "ten"
    when 11
      "eleven"
    when 12
      "twelve"
    when 13
      "thirteen"
    when 14
      "fourteen"
    when 15
      "fifteen"
    when 16
      "sixteen"
    when 17
      "seventeen"
    when 18
      "eighteen"
    when 19
      "nineteen"
    when 20
      "twenty"
    when 30
      "thirty"
    when 40
      "forty"
    when 50
      "fifty"
    when 60
      "sixty"
    when 70
      "seventy"
    when 80
      "eighty"
    when 90
      "ninety"
    when 20..99
      (self - (self % 10)).in_words + " " + (self % 10).in_words
    when 100..999
      (self/100).in_words + " hundred" + ((self % 100 == 0) ? "" : " " + (self % 100).in_words)
    when 1000..999999
      (self/1000).in_words + " thousand" + ((self % 1000 == 0) ? "" : " " + (self % 1000).in_words)
    when 1000000..999999999
      (self/1000000).in_words + " million" + ((self % 1000000 == 0) ? "" : " " + (self % 1000000).in_words)
    when 1000000000..999999999999
      (self/1000000000).in_words + " billion" + ((self % 1000000000 == 0) ? "" : " " + (self % 1000000000).in_words)
    when 1000000000000..999999999999999
      (self/1000000000000).in_words + " trillion" + ((self % 1000000000000 == 0) ? "" : " " + (self % 1000000000000).in_words)
    else
      "shit"
    end
  end
end

class Bignum
  def in_words
    case self
    when 0
      "zero"
    when 1
      "one"
    when 2
      "two"
    when 3
      "three"
    when 4
      "four"
    when 5
      "five"
    when 6
      "six"
    when 7
      "seven"
    when 8
      "eight"
    when 9
      "nine"
    when 10
      "ten"
    when 11
      "eleven"
    when 12
      "twelve"
    when 13
      "thirteen"
    when 14
      "fourteen"
    when 15
      "fifteen"
    when 16
      "sixteen"
    when 17
      "seventeen"
    when 18
      "eighteen"
    when 19
      "nineteen"
    when 20
      "twenty"
    when 30
      "thirty"
    when 40
      "forty"
    when 50
      "fifty"
    when 60
      "sixty"
    when 70
      "seventy"
    when 80
      "eighty"
    when 90
      "ninety"
    when 20..99
      (self - (self % 10)).in_words + " " + (self % 10).in_words
    when 100..999
      (self/100).in_words + " hundred" + ((self % 100 == 0) ? "" : " " + (self % 100).in_words)
    when 1000..999999
      (self/1000).in_words + " thousand" + ((self % 1000 == 0) ? "" : " " + (self % 1000).in_words)
    when 1000000..999999999
      (self/1000000).in_words + " million" + ((self % 1000000 == 0) ? "" : " " + (self % 1000000).in_words)
    when 1000000000..999999999999
      (self/1000000000).in_words + " billion" + ((self % 1000000000 == 0) ? "" : " " + (self % 1000000000).in_words)
    when 1000000000000..999999999999999
      (self/1000000000000).in_words + " trillion" + ((self % 1000000000000 == 0) ? "" : " " + (self % 1000000000000).in_words)
    else
      "shit"
    end
  end
end