# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PictureTag.destroy_all
Tag.destroy_all
Comment.destroy_all
Picture.destroy_all
User.destroy_all

#Create Users
User.create(username: "sarahg", password_digest: BCrypt::Password.create("test123"), email: "sarahG@hotmail.com")
User.create(username: "maninj", password_digest: BCrypt::Password.create("test123"), email: "maninJ@gmail.com")
User.create(username: "katemc", password_digest: BCrypt::Password.create("test123"), email: "kateMc@yahoo.com")
User.create(username: "arniea", password_digest: BCrypt::Password.create("test123"), email: "arnieA@basicmail.com")
User.create(username: "alexh", password_digest: BCrypt::Password.create("test123"), email: "alexH@hotmail.com")
User.create(username: "nicolec", password_digest: BCrypt::Password.create("test123"), email: "nicoleC@aol.com")

#Create Tags
["Nature", "Asia", "Village", "South America", "Europe", "Beach", "Art", "Food", "Travel", "Fun", "Ratchet", "Backpacker", "Hostel", "Street Food"].each do |tag_name|
  Tag.create(name: tag_name)
end

#Create Pictures / Comments / Picture Tags
url1 = "https://arniestoodling.files.wordpress.com/2017/08/img_4883.jpg"

Picture.create(
  img_url: url1,
  title: "Slovenian Country-Side Home",
  user_id: User.first.id,
)

Comment.create(
  content: "Best vacay spot eveerrrrr!",
  picture_id: Picture.first.id,
  user_id: User.first.id,
)

Comment.create(
  content: "Kinda meh.",
  picture_id: Picture.first.id,
  user_id: User.second.id,
)

PictureTag.create(
  name: "Nature",
  picture_id: Picture.first.id,
  tag_id: Tag.first.id,
)

url2 = "https://arniestoodling.files.wordpress.com/2017/07/img_8507.jpg?w=2000&h=1200&crop=1"

Picture.create(
  img_url: url2,
  title: "Rock climbing heaven - Cluj, Romania",
  user_id: User.second.id,
)

Comment.create(
  content: "I broke my arm here last week. Not a good spot.",
  picture_id: Picture.second.id,
  user_id: User.second.id,
)

PictureTag.create(
  name: "Nature",
  picture_id: Picture.second.id,
  tag_id: Tag.first.id,
)

url3 = "https://arniestoodling.files.wordpress.com/2017/05/img_3338.jpg?w=2000&h=1200&crop=1"

Picture.create(
  img_url: url3,
  title: "Small town charm - Puskhar, India",
  user_id: User.first.id,
)

Comment.create(
  content: "Street food heaven!",
  picture_id: Picture.third.id,
  user_id: User.first.id,
)

PictureTag.create(
  name: "Village",
  picture_id: Picture.third.id,
  tag_id: Tag.third.id,
)

PictureTag.create(
  name: "Asia",
  picture_id: Picture.third.id,
  tag_id: Tag.second.id,
)

url4 = "https://arniestoodling.files.wordpress.com/2017/10/cropped-img_3977.jpg"

Picture.create(
  img_url: url4,
  title: "Place of meditation - Delhi, India",
  user_id: User.fourth.id,
)

Comment.create(
  content: "Not sure if foreigner entrance fee is worth the money.",
  picture_id: Picture.fourth.id,
  user_id: User.fourth.id,
)

PictureTag.create(
  name: "Asia",
  picture_id: Picture.fourth.id,
  tag_id: Tag.second.id,
)

url5 = "https://arniestoodling.files.wordpress.com/2016/12/img_2914.jpg"

Picture.create(
  img_url: url5,
  title: "Backpack in the Patagonian Wilderness",
  user_id: User.fourth.id,
)

url6 = "https://arniestoodling.files.wordpress.com/2017/05/img_1614.jpg?w=2000&h=1200&crop=1"

Picture.create(
  img_url: url6,
  title: "Backwater Exploration - Can Tho, Vietnam",
  user_id: User.second.id,
)

url7 = "https://arniestoodling.files.wordpress.com/2016/12/971c6fe7-ba44-47bc-8ff9-af4f89fb5dc3.jpg"

Picture.create(
  img_url: url7,
  title: "Salt Flat Safari - Uyuni, Bolivia",
  user_id: User.third.id,
)
