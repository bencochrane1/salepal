class WelcomeController < ApplicationController

  def index

    @gmail_messages = connect_to_gmail

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




