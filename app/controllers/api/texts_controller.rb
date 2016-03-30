class Api::TextsController < ApplicationController
  
  skip_before_filter :verify_authenticity_token

  def create
    @text = Text.new params.require(:text).permit(:content)
    @text.chatroom = Chatroom.find(params[:id])
    @text.user = @current_user
    if @text.save
      render status: 201, json: @text
    else
      render status: 422, json: @text.errors
    end
  end

  def index
    @texts = Text.all
  end
end
