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
    @picture = Picture.create(picture_params)
    if @picture.valid?
      redirect_to @picture
    else
      redirect_to new_picture_path
    end
  end

  def edit
  end

  def update
    @picture.update(picture_params)
    redirect_to picture_path(@picture)
  end

  private

  def define_current_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:img_url, :title, :user_id, tag_ids: [], tags_attributes: [:name])
  end

end
