class User < ApplicationRecord
  has_secure_password
  has_many :comments
  has_many :pictures
  validates :username, uniqueness: true
  validates :email, uniqueness: true


 	def received_comments
 		
 	end

end
