class TagsController < ApplicationController
	
	def index
		@tags = Tag.all
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def new
		@tag = Tag.new
	end

	def create
		@tag = Tag.new(tag_params)
		if @tag.valid?
			@tag.save
			redirect_to @tag
		else
			redirect_to new_tag_path
		end
	end

	def edit
		@tag = Tag.find(params[:id])
	end

	def update
		@tag = Tag.find(params[:id])
		@tag.update
	end

	private

	def tag_params
		params.require(:tag).permit(:name)
	end

end
