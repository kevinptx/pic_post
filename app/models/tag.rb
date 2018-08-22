class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags
  #will return the most popular tags of all time for your application
  def self.most_popular
    mapped_tags = Tag.all.map do |tag|
      tag.length
    end
    mapped_tags.sort.reverse[0..2]
  end

  #the Tag from the last 10 pictures with the most comments.
  def self.trending
    mapped_tags = Tag.all.map do |tag|
      tag.pictures.map do |picture|
        picture.comments.sort
      end
    end
    mapped_tags.last(10)
  end
end
