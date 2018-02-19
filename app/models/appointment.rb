class Appointment < ApplicationRecord

  validates_presence_of :name, :phone_number, :time

  after_create :reminder

  # config.time_zone = 'Mountain Time (US & Canada)'

  def reminder
    @twilio_number = ENV['TWILIO_PHONE_NUMBER']
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    @client = Twilio::REST::Client.new account_sid, ENV['TWILIO_AUTH_TOKEN']
    time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi #{self.name}. Just a reminder that you have an appointment coming up at #{time_str}."
    message = @client.api.account(account_sid).messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => reminder,
    )
  end

  def when_to_run
    minutes_before_appointment = 1.day
    time - minutes_before_appointment
  end

  handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }

end
