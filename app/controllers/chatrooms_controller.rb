class ChatroomsController < ApplicationController
before_action :authenticate_user!
  def index
    @chatrooms = Chatroom.all
  end

  def new
  end

  def show
    @chatrooms = Chatroom.all
    @chatroom = Chatroom.find(params[:id])
  end

end
