class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
	new_post = params[:post].permit(:title,:description,:author)
	Post.create(new_post)
	redirect_to posts_path
	# new_tag = params[:tag].permit(:name)
	

	# if new_tag["name"] != nil
	# 	exists = Tag.find_by_name(new_tag["name"])
	# 	if exists == nil
	# 		tag_holder = Tag.create(new_tag)
	# 		post_holder.tags << tag_holder
	# 	else
	# 		post_holder.tags << exists
	# 	end
	# end
	
	# redirect_to '/posts'	
	end




	def show
		id = params[:id]
		@post = Post.find(id)
		render :show
	end




  def edit
    id = params[:id]
    @post = Post.find(id)
    render :edit
  end

  def update
    post_id = params[:id]
    post = Post.find(post_id)
    
    updated_params = params.require(:post).permit(:title, :description, :author)
    post.update_attributes(updated_params)
    redirect_to post
  end


  def destroy
    id = params[:id]
    post = Post.find(id)
    post.destroy
    redirect_to "/posts"
  end























end