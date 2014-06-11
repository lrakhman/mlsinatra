get '/' do
  @posts = Post.all
  erb :index
end


post '/users' do
  @user_info = User.create(email: params[:email], name: params[:name])
  session[:user_id] = @user_info.id

  redirect '/users/#{ :id}'
end

get '/users/:id' do

end



