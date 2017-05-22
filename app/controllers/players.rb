get '/players/new' do
  erb :'/players/new'
end

post '/players' do
  player = Player.new(params[:player])

  if player.save
    session.clear
    session[:user_id] = player.id
    redirect "/players/#{player.id}"
  else
    @errors = player.errors.full_messages
    erb :'/players/new'
  end
end

get '/players/:id' do
  @player = Player.find_by(id: params[:id])
  erb :'/players/show'
end

get '/players/:id/edit' do
  @player = Player.find_by(id: params[:id])
  erb :'/players/edit'
end

put '/players/:id' do
  player = Player.find_by(id: params[:id])
  user.update_attribute(params[:user])
  redirect '/'
end
