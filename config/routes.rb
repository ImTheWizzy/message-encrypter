Rails.application.routes.draw do
  resources :texts
  get 'text' => 'text#index'
  post 'text' => 'text#create'
  
  get 'result' => 'text#result'
  post 'result' => 'text#result'
end
