class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action do
    @current_user = User.find_by id: session[:user_id]
  end

   include SessionsHelper

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please Log In First"
      redirect_to log_in
    end
  end

end
