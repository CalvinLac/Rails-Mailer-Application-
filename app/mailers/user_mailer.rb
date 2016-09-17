class UserMailer < ApplicationMailer
  default :from => "from@example.com"

  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome BOI!')
  end

end
