# Twilio respond to a new SMS on Sinatra

require 'rubygems'
require 'twilio-ruby'
require 'sinatra'

msg = "The server has receieved your message, thank you."
puts "Running SMS reply"

get '/sms-reply' do
	twiml = Twilio::TwiML::Response.new do |r|
		r.Sms msg
	end
	twiml.text
end