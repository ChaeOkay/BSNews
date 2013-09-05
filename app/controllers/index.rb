get '/' do
  # Look in app/views/index.erb
  redirect '/posts'
end

get '/posts' do
  @post = Post.order("created_at DESC")
  erb :posts
end

get '/posts/:post_id/comments' do
  @post = Post.find(params[:post_id])
  @comments = @post.comments
  erb :post_comments
end