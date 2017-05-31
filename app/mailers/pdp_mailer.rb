class PdpMailer < ApplicationMailer
  default from: "l.haley@massey.ac.nz"

  def review_complete(pdp)
    @pdp = pdp
    # mail(to: @pdp.student.email, subject: 'PDP Review')
    mail(to: 'l.haley@massey.ac.nz', subject: 'PDP Review')
  end
end
