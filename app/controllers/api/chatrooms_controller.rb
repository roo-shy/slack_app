class Api::ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find params[:id]
  end

  def index
    @chatrooms = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end
  
end
