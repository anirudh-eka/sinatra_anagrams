get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/anagram' do
  params[:user_input]
  word = Word.where('word=?', params[:user_input]).first
  @anagrams = word.anagrams if word
  erb :index
end
