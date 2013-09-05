get '/' do
  # Look in app/views/index.erb
  redirect '/posts'
end

get '/posts' do
  @post = Post.order("created_at DESC")
  erb :posts
end
