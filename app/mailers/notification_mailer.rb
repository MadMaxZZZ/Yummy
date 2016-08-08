class NotificationMailer < ActionMailer::Base
  default from: "no-reply@yummyapp.com"

  def comment_added
    mail(to: "christophe.rezk@gmail.com", subject: "A comment has been added to your place")
  end
end
