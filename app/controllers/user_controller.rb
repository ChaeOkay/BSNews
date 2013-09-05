get '/user/:user_id' do
  @user = User.find(params[:user_id])

  erb :user
end

get '/user/:user_id/comments' do
  @comments = User.find(params[:user_id]).comments.order("created_at DESC")

  erb :user_comments
end