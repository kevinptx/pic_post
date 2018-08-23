class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create(comment_params)
		redirect_to picture_path(@comment.picture)
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		redirect_to comment_path(@comment)
	end

	def destroy
		@comment.destroy
	end

	private

	def comment_params
		params.require(:comment).permit(:content, :user_id, :picture_id)
	end

end
