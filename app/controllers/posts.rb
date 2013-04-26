get '/posts/new' do
  @post = Post.new
  erb :create_post
end

post '/posts/create' do
  # TODO: Handle errors
  @post = Post.new(params[:posts])
  if @post.save
    @message = "message created"
    redirect to "/posts/#{@post.id}"
  else
    erb :create_post
  end
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

  erb :update_post
end

#put?title=&body=
put '/posts/:post_id/update' do
  p params
  erb :update_post
end

