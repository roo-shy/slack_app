json.chatroom do |chatroom|
  json.name chatroom.name
  json.texts chatroom.texts do
    json.id text.id
    json.content text.content
    json.created_at text.created_at
     json.user do
       json.id text.user.id
       json.first_name text.user.first_name
       json.last_name text.user.last_name
       json.photo text.user.photo
     end
  end
end
