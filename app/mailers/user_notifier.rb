class UserNotifier < ApplicationMailer
   default :from => 'thall13-guitar-teach.com'
           
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_update_email(lesson)
    @lesson = lesson
     @lesson.course.users do |lcu|
    mail( :to => lcu.email,
    :subject => 'There is an update in your user area.' )
    end
  end

end


