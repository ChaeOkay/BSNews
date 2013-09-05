get '/user/:user_id' do
  @user = User.find(params[:user_id])

  erb :user
end

get '/user/:user_id/comments' do
  @comments = User.find(params[:user_id]).comments.order("created_at DESC")

  erb :user_comments
end

get '/user/:user_id/posts' do 
  @posts = User.find(params[:user_id]).posts.order("created_at DESC")

  erb :user_posts
end