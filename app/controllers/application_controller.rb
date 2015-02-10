require "gmail_xoauth"

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def connect_to_gmail(user)
    puts current_user.email
    puts current_user.token
    imap = Net::IMAP.new('imap.gmail.com', 993, usessl = true, certs = nil, verify = false)
    imap.authenticate('XOAUTH2', current_user.email, current_user.token)
    messages_count = imap.status('INBOX', ['MESSAGES'])['MESSAGES']
    puts "Seeing #{messages_count} messages in INBOX"
  end

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user


end
