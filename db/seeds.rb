# require_relative '../app/models/word'

file = File.open('/Users/apprentice/Dropbox/DBC-Chicago/Otters/Chris Laubacher/sinatra_skeleton/app/words.txt')
file.each do |word|
  Word.create(:word => word.chomp)
end
