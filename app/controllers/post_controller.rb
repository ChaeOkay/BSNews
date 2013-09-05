get '/' do
  # Look in app/views/index.erb
  redirect '/posts'
end

get '/posts' do
  session[:user_id] = 1
  @post = Post.order("created_at DESC")
  erb :posts
end

get '/posts/:post_id/comments' do
  @post = Post.find(params[:post_id])
  @comments = @post.comments.order("created_at DESC")
  erb :post_comments
end

post '/post/:post_id/comments' do
  new_comment = Comment.create( description: params[:description], 
                                user_id: session[:user_id], 
                                post_id: params[:post_id])

  erb :_comment, :locals => { passed_comment: new_comment }, layout: false
end