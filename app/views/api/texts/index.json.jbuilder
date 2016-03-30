json.texts @texts do |text|
  json.id text.id
  json.content text.content
  json.user_id text.user_id
  json.chatroom_id text.chatroom_id
  json.user do
    json.id text.user.id
    json.first_name text.user.first_name
    json.last_name text.user.last_name
  end
end
