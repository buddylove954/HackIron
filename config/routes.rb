Rails.application.routes.draw do
 
  resources :events
  root to: 'events#index'
  get '/home' => "callbacks#home"
  post '/home' => "callbacks#callback"
  #user images
  get '/addimage' => 'users#addimage'
  post '/addimage' => "users#uploadimage", as: :uploadimage
  #manager images
  get '/verify' => 'users#verify'
  post '/verify' => 'users#checkimage', as: :checkimage
  #oauth callbacks
  get '/home' => "callbacks#create-an-event"
  post '/home' => "callbacks#home"

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

end
