module Logistic
  class Notification < ApplicationMailer

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.notification.send_confirmation.subject
    #
    def send_confirmation
      @greeting = "Hi"

      mail to: "mubarakrocky@gmail.com"
    end
  end
end
