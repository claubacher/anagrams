# require_relative '../../Rakefile'
class Word < ActiveRecord::Base
  # Remember to create a migration!
  def anagrams
    our_word = self.word.split("").sort
    anagram_collection = []
    Word.all.each do |dict_word|
      if dict_word.word.split("").sort == our_word
        anagram_collection << dict_word.word
      end
    end
    anagram_collection
  end
end
