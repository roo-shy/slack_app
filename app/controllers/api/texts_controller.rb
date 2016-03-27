class Api::UsersController < ApplicationController
  before_action :logged_in_user

  def create
    @text = Text.new params.require(:text).permit(:content)
    @text.chatroom = Chatroom.find(params[:id])

    @text.user = @current.user
    if @text.save
      render status: 201, json: @text
    else
      render status: 422, json: @text.errors
    end
  end
end
