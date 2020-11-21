class UserMailer < ActionMailer::Base
    default :from => "guilherme.oligou@usp.br"

 def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registration Confirmation")
 end
end