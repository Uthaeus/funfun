namespace :notification do
  desc "Sends SMS notification to clients notifying them of upcoming appointment"
  task sms: :environment do
    # Schedule to run one day before appointment
    # Iterate over all clients
    # Skip admin
    # Send a message that notifies client of upcoming appt.
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # number: "555-555-5555"
    # number: "5555555555"
    # No spaces or dashes
    # exactly 10 characters
    # all characters have to be a number
    # users = User.all 
    # notification_message = "Giving a reminder of your appointment for #{user.appointment.time} on #{user.appointment.date}"

    # users.each do |user|
    #   if Time.now == appointment.time - 1.day
    #     SmsTool.send_sms(number: user.phone_number, message: notification_message)
    #   end
    # end
  end

end
