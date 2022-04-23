require 'pry'
class Anagram 
  def word_checker(word_one, word_two)
    word_one_str = word_one.downcase.chars.sort.join.to_s
    word_two_str = word_two.downcase.chars.sort.join.to_s
    str_comp = word_one_str == word_two_str
    #if str_comp == false


  end
  
  def letter_checker(input)
    input = input.chars.keep_if { |v| v =~ /[aeiou]/ }
    input == []
  end


end
    

