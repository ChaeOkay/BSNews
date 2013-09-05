get '/user/:user_id' do
  @user = User.find(params[:user_id])
  
  erb :user
end