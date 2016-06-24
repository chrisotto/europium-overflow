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
