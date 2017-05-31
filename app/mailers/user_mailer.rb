class UserMailer < ApplicationMailer

  def critical_notice(issue)
    @issue = issue
    # mail(to: @pdp.student.email, subject: 'PDP Review')
    mail(to: 'l.haley@massey.ac.nz', subject: 'Critical Issue')
  end
  
  def review_complete(pdp)
    @pdp = pdp
    # mail(to: @pdp.student.email, subject: 'PDP Review')
    mail(to: 'l.haley@massey.ac.nz', subject: 'PDP Review')
  end

end
