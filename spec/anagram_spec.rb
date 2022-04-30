require 'anagram'
require 'rspec'

describe Anagram  do
  describe '#word_checker?' do
    it('checks for anagrams') do
      test_one = Anagram.new('lamb', 'balm')
      expect(test_one.word_checker?()).to eq(true)
      test_two = Anagram.new('foo', 'bar')
      expect(test_two.word_checker?()).to eq(false)
    end
    it('accounts for capitalization') do 
      test_one = Anagram.new('LaMB', 'bAlm')
      expect(test_one.word_checker?()).to eq(true)
    end
    it('accounts for multiple words') do
      test_one = Anagram.new('Tom Marvolo Riddle', 'I Am Lord Voldemort') 
      expect(test_one.word_checker?()).to eq(true)
      test_two = Anagram.new('the quick brown fox', 'jumps over the lazy dog')
      expect(test_two.word_checker?()).to eq(false)
    end
  end
  describe '#vowel_checker?' do
    it('checks word for vowels') do 
      test_one = Anagram.new('foo', 'bar')
      expect(test_one.vowel_checker?()).to eq(false)
      test_two = Anagram.new('hll', 'wrld')
      expect(test_two.vowel_checker?()).to eq(true)
      test_three = Anagram.new('bcdfghjk', 'lmnpqrstvwxz')
      expect(test_three.vowel_checker?()).to eq(true)
    end
  end
  describe '#antigram_checker?' do
    it('checks if the words are antigrams while accounting for capitalization and multiple words') do
      test_one = Anagram.new('fOo', 'bAr')
      expect(test_one.antigram_checker?()).to eq(true)
      test_two = Anagram.new('Foo BAr', 'fOO baz')
      expect(test_two.antigram_checker?()).to eq(false)
    end
  end
end