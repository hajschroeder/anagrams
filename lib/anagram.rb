require 'pry'
class Anagram 
  def word_checker(word_one, word_two)
    word_one_str = word_one.downcase.chars.sort.join.to_s
    word_two_str = word_two.downcase.chars.sort.join.to_s
    str_comp = word_one_str == word_two_str


  end
  
  def letter_checker(input_one, input_two)
    first_input = input_one.chars.keep_if { |v| v =~ /[aeiou]/ }
    second_input = input_two.chars.keep_if{ |v| v =~ /|aeiou|/}
    input_comp = first_input == [] || second_input == []
  end

end
    

