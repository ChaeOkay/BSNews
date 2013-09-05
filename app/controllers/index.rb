get '/' do
  # Look in app/views/index.erb
  redirect '/posts'
end

get '/posts' do
  erb :posts
end
