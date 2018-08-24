class Tag < ApplicationRecord
  has_many :picture_tags
  has_many :pictures, through: :picture_tags

  #will return the most popular tags of all time for your application
  def self.most_popular
    sorted_tags = Tag.all.sort_by do |tag|
      tag.pictures.length
    end
    sorted_tags.reverse[0..2]
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
  #we want to show the pics on the show page that are associated with a certain tag name. Show all nature pics, show all Europe pics, etc...
  def filtered_picture_tags #returns all PictureTags where instance of Tag = pictureTag.tag
    PictureTag.all.select { |t| t.tag == self }
  end

  def select_img_urls_from_tags #using the above function, maps the urls of pictureTags.
    self.filtered_picture_tags.map { |t| t.picture.img_url }
  end
end
