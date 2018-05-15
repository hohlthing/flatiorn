# def reverse_each_word(string)
#   array = string.split
#   words_reversed = []
#   array.each { |x| words_reversed << x.reverse }
#   words_reversed.join(" ")
# end

def reverse_each_word(string)
  string.split.collect { |x| x.reverse }.join(" ")
end
