class User < ApplicationRecord
  has_secure_password
  has_many :comments, dependent: :destroy
  has_many :pictures, dependent: :destroy
  # accepts_nested_attributes_for :pictures
  # accepts_nested_attributes_for :comments

  # def pictures_attributes=(picture_attributes)
  #   picture_attributes.values.each do |picture_attribute|
  #     picture = Picture.find_or_create_by(picture_attribute)
  #     self.pictures << picture
  #   end
  # end

  # def comments_attributes=(comment_attributes)
  #   comment_attributes.values.each do |comment_attribute|
  #     comment = Comment.find_or_create_by(comment_attribute)
  #     self.comments << comment
  #   end
  # end

  validates :username, uniqueness: true
  validates :email, uniqueness: true


 	def received_comments
 		
 	end

end
