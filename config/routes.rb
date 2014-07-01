Rails.application.routes.draw do
  root :to => 'users#home'
  resources :users
  resources :moods
  get '/user_login' => 'session#new'
  post '/user_login' => 'session#create'
  delete '/user_login' => 'session#destroy'


  get '/login' => 'playlist#login'
  get '/callback' => 'playlist#callback'
  get '/logout' => 'playlist#logout'
end
