class User < ApplicationRecord
    private
  def send_welcome_email
    # Note that the bang (!) method will blow
    # up (roll back) the save transaction on failure
    UserMailer.welcome(self).deliver!
  end
end
