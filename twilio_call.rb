require 'twilio-ruby'
#account_sid = "ACf069217fff3d01e366b1e0da48f5e9dc"
#auth_token = "9d8d9150c1687586d91b1c9055f76979"
test_sid = "AC1af6d2cadf3dbca7dfd1061318365750"
test_token = "55062930b96bdd1ef3aa7e18fabf7971"

client = Twilio::REST::Client.new(account_sid, auth_token)
from = "6505819119" # Your Twilio number
to = "5197224965" # KE SUN
url = 'http://twimlets.com/holdmusic?Bucket=com.twilio.music.rock'
msg = "Hi this is a test! If you hear a call then this it worked. JASON SUN"
client.account.sms.messages.create(from: from, to: to, url: url)
client.account.calls.create(from: from, to: to, url: url)
