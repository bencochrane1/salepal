OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['GMAIL_CLIENT_ID'], ENV['GMAIL_CLIENT_SECRET'], {
  scope: ['email',
    'https://mail.google.com/',
    'https://www.googleapis.com/auth/gmail.modify','https://www.googleapis.com/auth/userinfo.email'],
    access_type: 'offline'}
end




# ENV['GOOGLE_KEY'] = 'yourkey'
# ENV['GOOGLE_SECRET'] = 'yoursecret'
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, ENV['GOOGLE_KEY'], ENV['GOOGLE_SECRET'], {
#     scope: 'https://mail.google.com/,https://www.googleapis.com/auth/userinfo.email'
#   }

# end

# # ...after handling login with OmniAuth...

# # in your script
# email = auth_hash[:info][:email]
# access_token = auth_hash[:credentials][:token]

# imap = Net::IMAP.new('imap.gmail.com', 993, usessl = true, certs = nil, verify = false)
# imap.authenticate('XOAUTH2', email, access_token)
# imap.select('INBOX')
# imap.search(['ALL']).each do |message_id|

#     msg = imap.fetch(message_id,'RFC822')[0].attr['RFC822']
#     mail = Mail.read_from_string msg

#     puts mail.subject
#     puts mail.text_part.body.to_s
#     puts mail.html_part.body.to_s

# end
