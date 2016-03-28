json.texts @texts do |text|
  json.id text.id
  json.content text.content
  json.user_id text.user_id
  json.chatroom_id text.chatroom_id
end
