to = '2153007370'
from = "6505819119"
url = 'http://twimlets.com/ACf069217fff3d01e366b1e0da48f5e9dc/a'
account_sid = 'ACf069217fff3d01e366b1e0da48f5e9dc'
auth_token = '9d8d9150c1687586d91b1c9055f76979'

require 'twilio-ruby'
client = Twilio::REST::Client.new(account_sid, auth_token)

client.account.calls.create(from: from, to: to, url: url)