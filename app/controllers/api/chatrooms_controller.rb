class Api::ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find params[:id]
  end
  def index
    @chatroom = Chatroom.find params[:id]
  end
end
