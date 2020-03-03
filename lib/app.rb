require 'sinatra'

set(:session_secret, 'here there be dragons')

get '/' do
  erb '<%=Time.now%>'
end
get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
get '/cat-form' do
  erb(:cat_form)
end
