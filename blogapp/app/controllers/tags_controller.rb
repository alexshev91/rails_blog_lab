class TagsController < ApplicationController

	def index
		@tags = Tag.all
	end

	def show
		id = params[:id]
		@tag = Tag.find(id)
		# render :show
	end

end