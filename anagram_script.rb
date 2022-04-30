#!/usr/bin/env ruby
require './lib/anagram'

puts "please enter a word"
word_one = gets.chomp
puts "and another please"
word_two = gets.chomp
words = Anagram.new(word_one, word_two)
puts "#{word_one}, #{word_two}"
is_word = words.vowel_checker?
is_anagram = words.word_checker?
is_antigram = words.antigram_checker?
if is_word
  puts "one of these is not a word"
end
if is_anagram
  puts "you've got yerself an anagram"
else 
  puts "nope, not an anagram"
end
if is_antigram 
  puts "these are actually antigrams"
end


