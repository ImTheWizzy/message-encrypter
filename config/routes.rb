Rails.application.routes.draw do
  resources :texts

  root 'text#index'
  #get '' => 'text#index'	
  post '' => 'text#create'
  get 'messages' => 'text#messages'

  #get 'text' => 'text#index'
  #post 'text' => 'text#create' 
  #get 'messages' => 'text#messages'
  #post 'messages' => 'text#messages'
end
