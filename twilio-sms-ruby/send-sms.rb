require 'date'
require 'twilio-ruby'

client = Twilio::REST::Client.new(
    ENV['TWILIO_ACCOUNT_SID'],
    ENV['TWILIO_AUTH_TOKEN']
)

minute = 1.0 / (24 * 60)
message = client.messages.create(
    body: "Thank you for your order, you can expect your food by #{(DateTime.now + 30 * minute).to_s[11...-6]} :)",
    to: ENV['TO_PHONE_NUMBER'],
    from: ENV['TWILIO_PHONE_NUMBER']
)

puts message.sid