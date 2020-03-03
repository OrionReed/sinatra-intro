require 'sinatra'

set(:session_secret, 'here there be dragons')

get '/' do
  erb '<%=Time.now%>'
end
get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
get '/named-cat' do
  @name = params[:name]
  erb(:index)
end

get '/secret' do
  'Turtles all the way down'
end

get '/foo' do
  'bar!'
end
