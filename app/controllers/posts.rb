# this will contain all Post related route


get '/create_post' do

  erb :create_a_post
end

get '/edit_single_post/:post_id' do
  @post = Post.find(params[:post_id])
   erb :edit_single_post
end


get '/:post_id' do
  @post = Post.find(params[:post_id])
  erb :single_page
end



post '/create_post' do 
 Post.create(title: params[:title], body: params[:body])
 redirect to '/#{@post.id}'
end

post '/edit_post' do 
 @post = Post.find(params[:hidden_post_id])
 @post.update_attributes(title: params[:title], body: params[:body])
 redirect to "/#{@post.id}"
end

post '/delete_single_post/:post_id' do
  @post = Post.find(params[:post_id])
  @post.destroy
   redirect to '/'
end







