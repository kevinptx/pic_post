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
    redirect_to new_tag_path unless params[:tag]
    @tag = Tag.find_or_create_by(tag_params)
    if @tag.valid
      redirect_to @tag
    else
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update
  end

  def destroy
    @tag.destroy
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
