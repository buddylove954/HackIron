Rails.application.routes.draw do
 
  resources :events
  root to: 'events#index'
  get '/home' => "callbacks#create-an-event"
  post '/home' => "callbacks#home"

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

end
