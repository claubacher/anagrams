get '/' do
  @word_sorted = params[:word].split("").sort.join
  
  @anagrams = []
  Word.where(:canonical => @word_sorted).each do |word|
    @anagrams << word.word
  end

  erb :index
end
