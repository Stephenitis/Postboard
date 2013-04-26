get '/' do
  post_list = Post.all
  erb :index
end


# not_found do
#   erb :'404'
# end
 
# # Render views/500.haml
# # @e holds whatever was thrown, in this example, a string, 
# # but it could have an Error class of some sort.
# error do
#   @e = request.env['sinatra_error']
#   haml :'500'
# end
 
# get '/' do
#   raise "Error happened!"
# end
