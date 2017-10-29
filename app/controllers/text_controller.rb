class TextController < ApplicationController
	skip_before_action :verify_authenticity_token
$message = ""
def index
end

def create 
	$message = params[:text]
	#Text.create(:text => $message)
	render plain: "https://message-encrypter.herokuapp.com/messages"
end

def messages
	render plain: $message
end

end
