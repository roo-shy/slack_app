
# Seed the users
ivanka = User.create! first_name: "ivanka", last_name: "tes", email: "ivanka@info.com", password: "12345678"
tuco = User.create! first_name: "tuco", last_name: "barboskin", email: "tuco@info.com", password: "12345678"
kelly = User.create! first_name: "kelly", last_name: "smith", email: "kelly@info.com", password: "12345678"
bonya = User.create! first_name: "bonya", last_name: "barboskina", email: "bonya@info.com", password: "12345678"

# Seed the chatrooms
ui = Chatroom.create name: "UI Design"
mobile = Chatroom.create name: "Mobile Development"

# Seed texts
Text.create chatroom: ui, content: "What is the essential of the UI design?", user: tuco, email:"tuco@info.com"
Text.create chatroom: ui, content: "Here is the list of forums and discussions for iOS developers", user: kelly, email: "kelly@info.com"
Text.create chatroom: mobile, content: "Mobile IOS 2016", user: ivanka, email: "ivanka@info.com"
Text.create chatroom: mobile, content: "Mobile Testing", user: tuco, email: "tuco@info.com"
Text.create chatroom: mobile, content: "Why does my phone collect location data", user: bonya, email: "bonya@info.com"
