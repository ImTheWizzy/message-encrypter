Rails.application.routes.draw do
  resources :texts

  root 'text#index'
  post '' => 'text#create'
  get 'messages' => 'text#messages'
  post 'messages/api' => 'text#api'

end
