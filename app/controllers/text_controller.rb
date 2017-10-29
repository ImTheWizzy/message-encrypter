class TextController < ApplicationController
	skip_before_action :verify_authenticity_token
$message = ""
def index
end

def create 
	$message = params[:text]
	#Text.create(:text => $message)
	render plain: "localhost:3000/result"
end

def result
	render plain: $message
end

end
