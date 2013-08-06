get '/' do
  # Look in app/views/index.erb
  erb :index
end


post '/' do
  input = params[:user_input]
  input = input.downcase.split('').sort.join
  @anagrams = []
  Word.where(sorted_letters: input).each {|sorted| @anagrams << sorted.word}
  erb :index
end
