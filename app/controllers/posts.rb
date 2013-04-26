get '/posts/new' do
  erb :create_post
end

post '/posts/create' do
  puts params.inspect
  @post = Post.create(params[:posts])
  @message = "message created"
  redirect to "/posts/#{@post.id}"
end

get '/posts/:post_id' do
  @post = Post.find(params[:post_id])
  @post
  erb :view_post
end


get '/posts/:post_id/edit' do
  # find the post
  # update the post
  # if post is successfully updated
  # => clear tag ids
  # => recreate tags
end

#put?title=&body=
put '/posts/:post_id/update' do
  erb :update_post
end

