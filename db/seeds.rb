# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[1,2,3].each do |num|
  User.create(
    username:"user#{num}",
    password_digest: BCrypt::Password.create("test123"),
    email: "user#{num}@example.com",
  )
end
 
["Nature", "Water", "Art", "Humor"].each do |tag_name|
  Tag.create(name: tag_name)
end
 
url1 = "https://photos.google.com/album/AF1QipMK7TcP-dqr3_r1yLl4Wnd-OSoPP8hQN1pNO3Rh/photo/AF1QipOW37mucaYemhiw-_Gdadx2j9XqZ9po-OBMvsxd"
 
Picture.create(
  img_url: url1,
  title: "Country life!",
  user_id: User.first.id
 )

Comment.create(
  content: "Not too shabby.",
  picture_id: Picture.first.id,
  user_id: User.first.id
)

PictureTag.create(
	name: "blessed",
	picture_id: Picture.first.id,
	tag_id: Tag.first.id
)

url2 = "https://photos.google.com/album/AF1QipMK7TcP-dqr3_r1yLl4Wnd-OSoPP8hQN1pNO3Rh/photo/AF1QipOgoEPR2f4gd9KXtlGeYV3jXSfKdCcn2yPUqyOt"
 
Picture.create(
  img_url: url2,
  title: "City life!",
  user_id: User.second.id
 )

Comment.create(
  content: "Not too shabby.",
  picture_id: Picture.second.id,
  user_id: User.second.id
)

PictureTag.create(
	name: "tiredaf",
	picture_id: Picture.second.id,
	tag_id: Tag.second.id
)


