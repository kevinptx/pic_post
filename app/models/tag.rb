class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  def most_popular
  	mapped_tags = Tag.all.map do |tag|
  		tag.pictures.length
  	end

  	mapped_tags.sort.reverse.first
  	mapped_tags.sort.reverse.second
  	mapped_tags.sort.reverse.third
  end

  #the Tag from the last 10 pictures with the most comments.
  def trending
  	mapped_tags = Tag.all.map do |tag|
  		tag.pictures.comments
  	end

  	mapped_tags[0..10].join
  end
  
end
