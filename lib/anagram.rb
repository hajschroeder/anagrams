require 'pry'

class Anagram 
  def word_checker(word_one, word_two)
    word_one.chars.sort.to_s.match?(word_two.chars.sort.to_s)

  end
end
