class TagsController < ApplicationController

	def index
		post_id = params[:post_id]
		@post = Post.find(post_id)
		@tags = @post.tags
	end

	def show
		post_id = params[:post_id]
		@post = Post.find(post_id)
		
		@tag = @post.tags.find(params[:id])
	end

end