class UserNotifier < ApplicationMailer
   default :from => 'thall13-guitar-teach.com'
           
  # send an update email to the user, pass in the user object that   contains the user's email address
  def send_update_email(lesson)
    @lesson = lesson
    @students = @lesson.course.users(is_admin: false)
     @students.find_each do |student|
        mail( :to => student.email,
              :subject => 'There is an update in your user area.' )
    end
  end

end


