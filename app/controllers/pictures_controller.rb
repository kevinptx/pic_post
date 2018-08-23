class PicturesController < ApplicationController
  before_action :define_current_picture, only: [:new, :edit, :show, :update]

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
  end

  def create
    picture = Picture.create(picture_params)
    redirect_to picture_path(picture)
    # if @picture.valid?
    #   @picture.save
    #   redirect_to @picture
    # else
    #   redirect_to new_picture_path
    # end
  end

  #this is the get
  def edit
  end

  #this is the post
  def update
    @picture.update(picture_params)
    redirect_to picture_path(@picture)
  end

  private

  def define_current_picture
    if (params[:id])
      @picture = Picture.find(params[:id])
    else
      @picture = Picture.new
    end
  end

  def picture_params
    params.require(:picture).permit(:img_url, :title, :user_id, tag_ids: [], tags_attributes: [:name], comment_ids: [], comments_attributes: [:content])
  end
end
