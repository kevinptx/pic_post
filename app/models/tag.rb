class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def most_popular
  	Tag.all.map do |tag|
  		tag.pictures.length
  	end
  end
  
end
