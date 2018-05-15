class Anagram

attr_accessor :word

def initialize(word)
  @word = word
end

def match(string)
  string.select {|x| x.split('').sort == @word.split('').sort }
end

end
