class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :picture

  def self.count
  	Comment.all.each do |comment|
  		comment.content
  	end
  end

end
