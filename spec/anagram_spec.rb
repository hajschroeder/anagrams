require 'anagram'
require 'rspec'

describe Anagram do
  describe '#word_checker' do 
  words = Anagram.new()
  it 'returns true if words match letters and false when they do not' do
    expect(words.word_checker("lamb", "balm")).to eq(true)
    expect(words.word_checker("foo", "bar")).to eq(false)
  end
  it 'accounts for capitalization' do
    expect(words.word_checker("LaMb", "BAlm")).to eq(true)
  end
  it 'accounts for phrases, not just single words' do
    expect(words.word_checker("Tom Marvolo Riddle", "I Am Lord Voldemort")).to eq(true)
  end
  it 'checks for antigrams between words' do 
    expect(words.word_checker("foo", "bar"))
  end
  describe '#letter_checker' do 
  compare =  Anagram.new()
  it 'returns true if the word contains no vowels and false for ones that do' do
    expect(compare.letter_checker("hllwrld", "fbrbz")).to eq(true)
    expect(compare.letter_checker("hello", "foobarbaz")).to eq(false)
  end
  describe '#antigram_checker' do 
  anti = Anagram.new()
  it 'checks if words contain any of the same words' do
    expect(anti.antigram_checker("foo", "bar")).to eq(true)
    expect(anti.antigram_checker("bar", "baz")).to eq(false)
  end
  it 'accounts for phrases' do 
    expect(anti.antigram_checker("smile big", "down frown")).to eq(true)
  end
end
end
end 
end
