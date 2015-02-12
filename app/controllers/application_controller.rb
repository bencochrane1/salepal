require "gmail_xoauth"

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def connect_to_gmail(&block)
    gmail = Gmail.connect!(:xoauth2, current_user.email, current_user.token, &block)
  end

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end






















