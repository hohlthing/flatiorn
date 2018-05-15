# Your TextAnalyzer model code will go here.
class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
    pig_phrase(text)
  end

  def pig_word(word)
    if word =~ (/\A[aeiou]/i)
      word = word + 'ay'
    elsif word =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]/i.match(word)
      word = match.post_match + match.to_s + 'ay'
    end
    word
  end

  def pig_phrase(phrase)
    array_of_words = phrase.split(' ')

    user_phrase = array_of_words.map { |w| pig_word(w) }.join(' ')

  end
end
