class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  
  protect_from_forgery with: :exception

  def user_signed_in?
  session[:user_id].present?
  end
  helper_method :user_signed_in?

  def current_user
    @current_user ||= User.find session[:user_id] if session[:user_id]
  end
  helper_method :current_user

  def sign_in(user)
    session[:user_id] = user.id
  end

  def authenticate_user!
  redirect_to new_session_path unless user_signed_in?
  end
  helper_method :authenticate_user!

end
