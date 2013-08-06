class Word < ActiveRecord::Base
  # Remember to create a migration!

  def anagrams
    words = Word.all
    correct_length_words = words.select { |word| word.word.length == self.word.length}
    anagrams = correct_length_words.select do |word|
      word.word.split("").sort == self.word.split("").sort
    end
    anagrams
  end
end
