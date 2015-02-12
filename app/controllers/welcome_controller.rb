class WelcomeController < ApplicationController

  def index

    # connect_to_gmail do |gmail|
    #   Lead.all.each do |lead|

    #     gmail.inbox.find(from: lead.title).each do |email|  

    #       begin
    #         real_to_email = email.to[0].mailbox + "@" + email.to[0].host 
    #         real_from_email = email.from[0].mailbox + "@" + email.from[0].host 
    #         current_user.emails.create(to: real_to_email, from: real_from_email, subject: email.subject, message_body: email.text_part.body.raw_source, date_sent: email.to_imap_date, lead_id: lead.id)

    #       rescue NoMethodError

    #       end

    #     end
    #   end
    # end

  end


  def landingpage
    render layout: "layouts/landingpage"
  end
  
end




