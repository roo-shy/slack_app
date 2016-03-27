json.chatroom do
  json.id @chatroom.id
  json.name @chatroom.name
  json.texts @chatroom.texts do |texts|
    json.id text.id
    json.content text.content
    json.created_at text.created_at
     json.user do
       json.id text.user.id
       json.name text.user.email
     end
  end
end
