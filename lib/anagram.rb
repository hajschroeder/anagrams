require 'pry'

class Anagram 
  def word_checker(word_one, word_two)
    word_one.downcase.chars.sort.to_s == word_two.downcase.chars.sort.to_s

  end
end
