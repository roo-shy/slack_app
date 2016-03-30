json.chatroom do
  json.id @chatroom.id
  json.name @chatroom.name
  json.texts @chatroom.texts do |texts|
    json.id text.id
    json.content text.content
    json.created_at text.created_at
     json.user do
       json.id text.user.id
       json.first_name text.user.first_name
       json.last_name text.user.last_name
     end
  end
end
