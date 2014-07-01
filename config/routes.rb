Rails.application.routes.draw do
  root :to => 'users#home'
  resources :users

  get '/user_login' => 'session#new'
  post '/user_login' => 'session#create'
  delete '/user_login' => 'session#destroy'
end
