json.chatroom do |chatroom|
  json.id chatroom.id
  json.name chatroom.name
  json.texts chatroom.texts do
    json.id text.id
    json.content text.content
    json.created_at text.created_at
     json.user do
       json.id user.id
       json.first_name user.first_name
       json.last_name user.last_name
       json.photo user.photo
     end
  end
end
