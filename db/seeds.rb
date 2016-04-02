if User.count == 0
  user = User.new
  user.name = "ivanka"
  user.email = "ivanka@info.com"
  user.password = "12345678"
  File.open("#{Rails.root}/app/assets/images/2.jpg", "rb") do |file|
   user.photo_id = file
 end
 user.save


 user = User.new
 user.name = "tuco"
 user.email = "tuco@info.com"
 user.password = "12345678"
 File.open("#{Rails.root}/app/assets/images/3.png", "rb") do |file|
  user.photo_id = file
end
user.save

user = User.new
user.name = "kelly"
user.email = "kelly@info.com"
user.password = "12345678"
File.open("#{Rails.root}/app/assets/images/4.png", "rb") do |file|
 user.photo_id = file
end
user.save

user = User.new
user.name = "sasha"
user.email = "sasha@info.com"
user.password = "12345678"
File.open("#{Rails.root}/app/assets/images/1.jpg", "rb") do |file|
 user.photo_id = file
end
user.save
end
# Seed the chatrooms
ui = Chatroom.create name: "UI Design"
mobile = Chatroom.create name: "Mobile Development"

# Seed texts
100.times do
Text.create chatroom: ui, content: "What is the essential of the UI design?", user: "tuco", email:"tuco@info.com"
Text.create chatroom: ui, content: "Here is the list of forums and discussions for iOS developers", user: "kelly", email: "kelly@info.com"
Text.create chatroom: mobile, content: "Mobile IOS 2016", user: "ivanka", email: "ivanka@info.com"
Text.create chatroom: mobile, content: "Mobile Testing", user: "tuco", email: "tuco@info.com"
Text.create chatroom: mobile, content: "Why does my phone collect location data", user: "sasha", email: "sasha@info.com"
end
