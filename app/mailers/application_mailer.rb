class ApplicationMailer < ActionMailer::Base
  default to: "info@CRentals.com", from: 'info@example.com'
  layout 'mailer'
end
