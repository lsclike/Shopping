# Load the Rails application.
require_relative 'application'
# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['SEND_USERNAME'],
    :password       => ENV['SEND_PASSWORD'],
    :domain         => "tetkjdfkjdf.com",
    :enable_starttls_auto => true
}

