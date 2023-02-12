# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
# config.action_mailer.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.sendgrid.net", #"smtp.gmail.com"
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "apikey",
  :password             => "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",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

