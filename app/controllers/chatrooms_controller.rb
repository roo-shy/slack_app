class ChatroomsController < ApplicationController

  def index
    @chatroom = Chatroom.all
  end

end
