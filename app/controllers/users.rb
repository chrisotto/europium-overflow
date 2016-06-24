get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user[:id]
    redirect '/'
  else
  #  TODO insert error handling
  end
end

get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(params[:user][:password])
    session[:id] = @user[:id]
    redirect '/'
  else
    # todo: error handling
  end
end

delete '/session/:id' do
  session[:id] = nil
  '/'
end
