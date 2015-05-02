Rails.application.routes.draw do
  devise_for :users
  root to: 'callbacks#home'
  get '/home' => "callbacks#home"
  post '/home' => "callbacks#callback"
end
