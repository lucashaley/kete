class IssueMailer < ApplicationMailer
  # default from: "l.haley@massey.ac.nz"

  # layout 'mailer'

  def critical_notice(issue)
    @issue = issue
    # mail(to: @pdp.student.email, subject: 'PDP Review')
    mail(to: 'l.haley@massey.ac.nz', subject: 'Critical Issue')
  end
end
