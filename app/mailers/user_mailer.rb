class UserMailer < ActionMailer::Base
  def send_new_user_mail(user)
    @user = user
    mail( from: 'test@abbiomat.ca', to: 'nicpon.michal@gmail.com', subject: "New user created" )
  end

  def welcome_mail(user)
    @user = user
    mail( from: 'bioasc@ualberta.ca', to: @user.email, subject: "Welcome to Canadian Biomaterials Society - Alberta Student Chapter")
  end
end
