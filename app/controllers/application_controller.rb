require "gmail_xoauth"

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def connect_to_gmail(&block)

    gmail = Gmail.connect!(:xoauth2, current_user.email, current_user.token, &block)  #do |gmail_login|

    #   gmail_login.inbox.find(from: "penelope@generalassemb.ly").each do |current_email|
    #     # Email.create!(subject: current_email.subject, message_body: current_email.text_part.body.raw_source, date_sent: current_email.to_imap_date, lead_id: lead.id, user_id: current_user.id)
    #     Email.create(subject: current_email.subject, message_body: current_email.text_part.body.raw_source, date_sent: current_email.to_imap_date)
    #   end
    #   # binding.pry

    #     # Email.create(subject: "Call next week", to: lead1.title, from: "bochrane@gmail.com", date_sent: "2014", message_body: "Hi Bill, just seeing if we are still on for today", lead_id: lead1.id )


    # end

  
  end

  protected

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end






















