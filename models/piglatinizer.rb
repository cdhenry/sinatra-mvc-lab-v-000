class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase.split(" ")
  end

  def words_beginning_with_consonants
    @text.collect do |word|
      if word =~ /\A[^aeiou]/

      elsif word =~ /\A[^aeiou]+/
      elsif word =~ /\A[aeiou]/
        
  end
  #For words that begin with consonant sounds,
  #all letters before the initial vowel are placed at the end of the word sequence.
  #Then, "ay" is added

  #When words begin with consonant clusters (multiple consonants that form one sound),
  #the whole sound is added to the end when speaking or writing.

  #For words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay")
end
