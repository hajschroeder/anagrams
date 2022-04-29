require 'pry'
class Anagram 
  def word_checker(word_one, word_two)
    word_one_str = word_one.downcase.chars.sort.join.to_s.delete(' ')
    word_two_str = word_two.downcase.chars.sort.join.to_s.delete(' ')
    str_comp = word_one_str == word_two_str
  end
  
  def letter_checker(word_one, word_two)
    first_input = word_one.chars.keep_if { |v| v =~ /[aeiou]/ }
    second_input = word_two.chars.keep_if { |v| v =~ /[aeiou]/}
    input_comp = first_input == [] || second_input == []
  end

  def antigram_checker(word_one, word_two)
    compare = word_one.downcase.chars.sort.join.to_s.delete(' ').chars & word_two.downcase.chars.sort.join.to_s.delete(' ').chars
    compare == []
  end

end
    

