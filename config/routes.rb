Rails.application.routes.draw do
 
  resources :events
  root to: 'events#index'
  get '/home' => "callbacks#home"
  post '/home' => "callbacks#callback"

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

end
