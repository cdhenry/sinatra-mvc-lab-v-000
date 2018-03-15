class PigLatinizer

  def piglatinize(text)
    text.downcase.split(" ").collect do |word|
      case word
      when /\A[^aeiou]/
        words_beginning_with_consonant(word)
      when /\A[aeiou]/
        words_beginning_with_vowel(word)
      end
    end
  end

  def words_beginning_with_consonant(word)
    first_vowel_index = word.index(/[aeiou]/)
    word[first_vowel_index..-1] + word[0..first_vowel_index] + "ay"
  end

  def words_beginning_with_vowel(word)
    word + "ay"
  end
end
