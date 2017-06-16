# Anagrams

def combine_anagrams(words)
  anagrams = Hash.new

  sorted_words = []
  words.each do |word|
    sorted_word = sort_word(word)
    unless anagrams.has_key?(sorted_word)
      anagrams[sorted_word] = Array.new
    end
    anagrams[sorted_word] << word
  end

  output = []
  anagrams.each do |key,value|
    output << value
  end

  p output
end

def sort_word(word)
  word.unpack("c*").sort.pack("c*")
end
