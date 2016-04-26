def upload_image(photo_name)
  backend = Refile.store
  path = File.join(Rails.root, "test/fixtures/#{photo_name}.jpg")
  backend.upload(File.new(path))
end

if User.count == 0
  user = User.new
  user.first_name = "ivanka"
  user.last_name = "tessa"
  user.email = "ivanka@info.com"
  user.password = "12345678"
  user.photo = photo_id: upload_image('1').id
 end
 user.save


 user = User.new
 user.first_name = "tuco"
 user.last_name = "barboskin"
 user.email = "tuco@info.com"
 user.password = "12345678"
 user.photo = photo_id: upload_image('2').id
end
user.save

user = User.new
user.first_name = "kelly"
user.last_name = "watson"
user.email = "kelly@info.com"
user.password = "12345678"
user.photo = photo_id: upload_image('3').id
end
user.save

user = User.new
user.first_name = "sasha"
user.last_name = "ziberov"
user.email = "sasha@info.com"
user.password = "12345678"
user.photo = photo_id: upload_image('4').id
end
user.save
end
# Seed the chatrooms
ui = Chatroom.create name: "UI Design"
mobile = Chatroom.create name: "Mobile Development"

# Seed texts
100.times do
Text.create chatroom: ui, content: "What is the essential of the UI design?"
Text.create chatroom: ui, content: "Here is the list of forums and discussions for iOS developers"
Text.create chatroom: mobile, content: "Mobile IOS 2016"
Text.create chatroom: mobile, content: "Mobile Testing"
Text.create chatroom: mobile, content: "Why does my phone collect location data"

end
