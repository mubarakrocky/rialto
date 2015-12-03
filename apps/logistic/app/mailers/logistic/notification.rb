module Logistic
  class Notification < ApplicationMailer

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.notification.send_confirmation.subject
    #
    def send_confirmation(order)
      @order = order

      mail(to: ["mubarakrocky@gmail.com", "asilgulsar@gmail.com", "arshedg@gmail.com", "vysakhvew@gmail.com"], subject: "New Order Has Been Placed")
    end
  end
end
