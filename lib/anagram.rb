require 'pry'

class Anagram
  def initialize(word_one, word_two)
    @word_one = word_one.downcase.delete(' ').chars.sort.join
    @word_two = word_two.downcase.delete(' ').chars.sort.join
  end

  def word_checker?
    @word_one == @word_two
  end

  def vowel_checker?
  input_one = @word_one.chars.keep_if { |v| v =~ /[aeiou]/ }
  input_two = @word_two.chars.keep_if { |v| v =~ /[aeiou]/ }
  compare_vowels = input_one == [] || input_two == []
  end

  def antigram_checker?
    compare = @word_one.chars & @word_two.chars
    compare == []
  end

end
