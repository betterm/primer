class UserMailer < ActionMailer::Base
  default from: 'noreply@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Welcome to My TestApp')
  end
end
