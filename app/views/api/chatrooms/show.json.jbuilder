json.chatroom do
  json.id @chatroom.id
  json.chatroom_name @chatroom.chatroom_name
  json.texts @chatroom.texts do |text|
    json.id text.id
    json.content text.content
      json.user do
        json.id text.user.id
        json.first_name text.user.first_name
        json.photo_id text.user.photo_id
      end
    end
end
