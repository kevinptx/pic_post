class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :picture

 	def total_number_of_comments 
   	 	@comments_total = Comment.all.count 
 	end

 	def picture_comments
 		
 	end

end
