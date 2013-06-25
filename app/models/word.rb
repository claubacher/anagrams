class Word < ActiveRecord::Base
  # This bit here takes forever and I couldn't figure out how to
  # make it stop running, so ctrl-C as soon as you hit 230000 or so.
  before_save do |word|
    word.canonical = word.word.split("").sort.join
  end
end
