# Fun with strings

# (a)

def palindrome?(string)
  string.downcase!.gsub!(/[^a-zA-Z]/,"") == string.reverse
end





# (b)

def count_words(string)
  words = string.downcase.scan(/[\w']+/)
  frequency = Hash.new(0)
  words.each do |word|
    frequency[word] +=1
  end
  p frequency
end
