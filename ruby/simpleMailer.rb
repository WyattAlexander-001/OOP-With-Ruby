# Simple mailer:after
# gem install actionmailer activesupport

require 'action_mailer'
require 'active_support'
require 'active_support/core_ext'

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'supernobleabsinthe@gmail.com',   # Your email
  password:             'SuperSatoshi2dmax84645!',      # Your app password
  authentication:       'plain',
  enable_starttls_auto: true
}

class SimpleMailer < ActionMailer::Base
  default from: 'your_email@gmail.com'  # Your email

  def send_email
    mail(
      to: 'wyattbushman117@gmail.com',
      subject: 'Test Email from Action Mailer',
      body: 'Hello Wyatt, this is a test email sent from an Action Mailer script!'
    )
  end
end

# Send the email
begin
  SimpleMailer.send_email.deliver_now
  puts 'Email sent successfully!'
rescue StandardError => e
  puts "Failed to send email: #{e.message}"
end