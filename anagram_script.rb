#!/usr/bin/env ruby
require './lib/anagram'

words = Anagram.new()
puts "Please Enter a word"
word_one = gets.chomp
is_word = words.letter_checker(word_one)
if is_word
  puts "that's not a valid input"

puts "And another please"
word_two = gets.chomp

is_anagram = words.word_checker(word_one, word_two)
end
if is_anagram
  puts "these are anagrams"
elsif is_anagram == false
  puts "nope, not an anagram"
end

