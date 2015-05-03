Rails.application.routes.draw do
 
  resources :events
  root to: 'events#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

end
