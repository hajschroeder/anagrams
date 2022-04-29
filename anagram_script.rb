#!/usr/bin/env ruby
require './lib/anagram'

words = Anagram.new()
puts "Please Enter a word"
word_one = gets.chomp
puts "And another please"
word_two = gets.chomp

puts "#{word_one}, #{word_two}"
is_word = words.letter_checker(word_one, word_two)
is_anagram = words.word_checker(word_one, word_two)
is_antigram = words.antigram_checker(word_one, word_two)
if is_word
  puts "one of these is not a word, we need vowels"
end
if is_anagram
  puts "these are anagrams"
else
  puts "nope, not an anagram"
end
if is_antigram
  puts "these are actually antigrams"
end


