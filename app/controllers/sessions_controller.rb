class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
     if user && user.authenticate(params[:email])
       session[:user_id] = user.id
       redirect_to root_path
     else
       render :new

  end

  def new
  end
end
