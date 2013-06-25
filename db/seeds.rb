ActiveRecord::Base.retrieve_connection.execute("COPY words (word) FROM '/Users/apprentice/Dropbox/DBC-Chicago/Otters/Chris Laubacher/sinatra_skeleton/app/words.txt';")
Word.find_each { |word| word.save }

