class ApplicationMailer < ActionMailer::Base
  default from: "my-rails-app@noreply.com"
  layout 'mailer'
end