class ChatroomsController < ApplicationController
before_action :authenticate_user!
  def index
    @chatrooms = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def show
    @chatrooms = Chatroom.all
    @chatroom = Chatroom.find(params[:id])
  end


  def create
  @chatroom = Chatroom.new
  @chatroom.text = params[:chatroom][:text]
  @chatroom.user = @current_user
    if @chatroom.save
      redirect_to root_path
    else
      render :new
    end
  end

end
