
# Seed the users
ivanka = User.create! first_name: "ivanka", last_name: "tes", email: "ivanka@info.com", password: "12345678"
tuco = User.create! first_name: "tuco", last_name: "barboskin", email: "tuco@info.com", password: "12345678"
kelly = User.create! first_name: "kelly", last_name: "smith", email: "kelly@info.com", password: "12345678"

# Seed the chatrooms
ui = Chatroom.create! name: "UI Design"
mobile = Chatroom.create! name: "Mobile Development"

# Seed texts
Text.create! chatroom: ui, content: "What is the essential of the UI design?", user: ivanka
Text.create! chatroom: mobile, content: "Here is the list of forums and discussions for iOS developers", user: kelly
