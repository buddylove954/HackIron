Rails.application.routes.draw do

  get '/home' => "callbacks#home"
  post '/home' => "callbacks#callback"
end
