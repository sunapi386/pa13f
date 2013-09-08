require 'httparty'
require 'json'

token = "e6a75d6b6d7b0fdd0eee93fd3c141d808852a0e9"
request_headers = {"User-Agent" => "codecademy",
        "Authorization" => "token:#{token}"}

response = HTTParty.get "https://api.github.com", 
         :headers => request_headers
print response.headers["X-OAuth-Scopes"]
