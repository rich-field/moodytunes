Rails.application.routes.draw do
  root :to => 'playlist#index'
  get '/login' => 'playlist#login'
  get '/callback' => 'playlist#callback'
end
