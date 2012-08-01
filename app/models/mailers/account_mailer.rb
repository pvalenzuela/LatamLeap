class AccountMailer < Devise::Mailer

  server_settings = {
    :enable_starttls_auto => true,
    :address => "smtp.gmail.com",
    :port => "587",
    :domain => "gmail.com",
    :authentication => :plain,
    :user_name => "tbarros@latamleap.com",
    :password => "cvqses69"
  }

#  require 'tlsmail'
#  Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)

#  delivery_method = :smtp
#  perform_deliveries = true
#  raise_delivery_errors = true
#  smtp_settings = {
#    :enable_starttls_auto => true,
#    :address            => 'smtp.gmail.com',
#    :port               => 587,
#    :tls                  => true,
#    :domain             => 'gmail.com', #you can also use google.com
#    :authentication     => :plain,
#    :user_name          => 'tomas.barros@latamleap.com',
#    :password           => 'cvqses69'
#  }

  default from: "tbarros@latamleap.com"
  
end
