class UserMailer < ActionMailer::Base
  def send_new_user_mail(user)
    @user = user
    puts ENV['MANDRILL_USERNAME']
    puts ENV['MANDRILL_PASSWORD']
    mail( from: 'test@abbiomat.ca', to: 'nicpon.michal@gmail.com', subject: "New user created" ).deliver
  end
end
