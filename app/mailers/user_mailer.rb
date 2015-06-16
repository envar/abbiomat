class UserMailer < ActionMailer::Base
  def send_new_user_mail(user)
    @user = user
    mail( from: 'admin@abbiomat.ca', to: 'bioasc@ualberta.ca', subject: "New user created" )
  end

  def welcome_mail(user)
    @user = user
    mail( from: 'bioasc@ualberta.ca', to: @user.email, subject: "Welcome to Canadian Biomaterials Society - Alberta Student Chapter")
  end
end
