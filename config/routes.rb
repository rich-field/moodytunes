Rails.application.routes.draw do
  get '/login' => 'playlist#login'
  get '/callback' => 'playlist#callback'
  resources :moods
end
