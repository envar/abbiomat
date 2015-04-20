class MyRegistrationsController < Devise::RegistrationsController
  def create
    super
    if @user.persisted?
      UserMailer.send_new_user_mail(@user).deliver_now
    end
  end
end
