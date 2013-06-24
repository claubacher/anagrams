get '/' do
  @word = params[:word]
  test_word = Word.where(:word => @word)
  @print_word = test_word[0].anagrams
  def show_words
    puts @print_word
  end
  erb :index
end
