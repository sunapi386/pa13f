#Twilio send msg

require 'twilio-ruby'
require 'rubygems'

account_sid = "ACf069217fff3d01e366b1e0da48f5e9dc"
auth_token = "9d8d9150c1687586d91b1c9055f76979"

client = Twilio::REST::Client.new(account_sid, auth_token)
from = "6505819119" # Your Twilio number
msg = "Testing message, do not reply."

friends = {
"2153007370" => "JASON AT&T (USA)",
"5195002969" => "JASON FIDO (WATERLOO)",
"6137626096" => "JASON ROGERS (OTTAWA)",
"5197224965" => "KE SUN"
}

friends.each do |num, name| 
    client.account.sms.messages.create(
        :from => from, 
        :to => num, 
        :body => "Hi #{name}, #{msg}"
    )
    puts "Sent message to #{name}"
end
