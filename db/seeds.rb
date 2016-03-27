User.create first_name: "ivanka", last_name: "tes", password: "12345678"
# Seed the users
10.times do |n|
user = User.create first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "1234567", password_confirmation: "password",
email: Faker::Internet.email

end

# Seed the chatroom
Chatroom.create! name: "Graphic Design"
Chatroom.create! name: "Industrial Design"
