require 'json'
require 'net/http'
class TextController < ApplicationController
$message = ""
def index
end

def create 
	$message = params[:text]
	render plain: "https://message-encrypter.herokuapp.com/messages"
end

def messages
	render plain: $message
end

def api
	message_url = "https://message-encrypter.herokuapp.com/messages"
	
	if request.headers["Content-Type"] == "text/xml"
		$message = Nokogiri::XML(request.body.read).content
		render plain: "<url>" + "#{message_url}" + "</url>" + "\n"
	end
	
	if request.headers["Content-Type"] == "application/json"
		$message = params[:message]
		render plain: "'"'{"url":' + '"' + message_url.to_s + '"}'"'" + "\n"
	end
end

end
