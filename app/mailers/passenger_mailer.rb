class PassengerMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.passenger_mailer.confirmation_email.subject
  #
  def confirmation_email(booking, passenger)
    @booking = booking
    @passenger = passenger

    mail to: @passenger.email
  end
end
