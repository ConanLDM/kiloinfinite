class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(user_id)
    @user = User.find(user_id)

    mail(   :to      => @user.email,
            :subject => "Welcome!"
    ) do |format|
      format.text
      format.html
    end
  end
end
