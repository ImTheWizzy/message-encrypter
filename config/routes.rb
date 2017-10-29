Rails.application.routes.draw do
  resources :texts
  get 'text' => 'text#index'
  post 'text' => 'text#create'
  
  get 'messages' => 'text#messages'
  post 'messages' => 'text#messages'
end
