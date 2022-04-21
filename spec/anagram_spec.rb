require 'anagram'
require 'rspec'

describe Anagram do
  describe '#word_checker' do 
  words = Anagram.new()
  it 'returns true if words match letters' do
    expect(words.word_checker("lamb", "balm")).to eq(true)
  end
  it 'accounts for capitalization' do
    expect(words.word_checker("LaMb", "BAlm")).to eq(true)
  end
end
end