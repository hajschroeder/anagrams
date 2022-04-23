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
  it 'checks for antigrams between words' do 
    expect(words.word_checker("foo", "bar"))
  end
  describe '#letter_checker' do 
  compare =  Anagram.new()
  it 'returns true if the word contains no vowels and false for ones that do' do
    expect(compare.letter_checker("hllwrld")).to eq(true)
    expect(compare.letter_checker("foobarbaz")).to eq(false)
  end
end
end
end