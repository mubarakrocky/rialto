module Logistic
  # Preview all emails at http://localhost:3000/rails/mailers/notification
  class NotificationPreview < ActionMailer::Preview

    # Preview this email at http://localhost:3000/rails/mailers/notification/send_confirmation
    def send_confirmation
      Notification.send_confirmation
    end

  end
end
