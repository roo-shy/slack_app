User.create first_name: "ivanka", last_name: "tes", password: "12345678"
# Seed the users
20.times do |n|
user = User.create first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "password", password_confirmation: "password",
email: Faker::Internet.email

end

# Seed the chatroom
Chatroom.create! name: "Graphic Design"
Cahtroom.create! name: "Industrial Design"

users = User.all
20.times do
  users.each { |user| user.text.create(chatroom_id: chatroom_id, content: content, posted_at: posted_at)}
  content = Faker::Lorem.sentence(3)
  chatroom_id = rand(1..2)
  posted_at = Faker::Time.between(2.days.ago, Time.now, :all)
end
