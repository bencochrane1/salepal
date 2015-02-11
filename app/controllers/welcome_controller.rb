class WelcomeController < ApplicationController

  def index

    connect_to_gmail do |gmail|
      Lead.all.each do |lead|

        gmail.inbox.find(from: lead.title).each do |email|  
          # binding.pry

        # begin
        #   real_to_email = email.to[0].mailbox + "@" + email.to[0].host 
        #   real_from_email = email.from[0].mailbox + "@" + email.from[0].host 
        #   current_user.emails.create(to: real_to_email, from: real_from_email, subject: email.subject, message_body: email.text_part.body.raw_source, date_sent: email.to_imap_date, lead_id: lead.id)
        #   # if email.to[0] && email.to[0].mailbox && email.to[0].host 
        # rescue NoMethodError
        #   # binding.pry
        #   # end
        # end
        end
      end
    end




# gmail.inbox.find(from: "penelope@generalassemb.ly").each { |e| puts e.to.map { |a| "#{a.name ? a.name + ' ' : ''}<#{a.mailbox}@#{a.host}>" }.join(", ") }

    # @gmail_count = @gmail_messages.inbox.count(from: "jack.hamblin@generalassemb.ly" )



    # @articles = Article.all
    # username = 'bochrane@gmail.com'
    # password = 'Rexandbob5%'
    # gmail = connect_to_gmail(username, password)
    # gmail_raw_messages = gmail.inbox.find( from: "jack.hamblin@generalassemb.ly" )
    # @saved_messages = gmail_raw_messages.map { |email|
    #   email.text_part.body.raw_source
    # }

    # gmail.logout





  end



  def landingpage
    render layout: "layouts/landingpage"
  end
end




