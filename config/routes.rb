Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root to: 'authors#index'

  get 'authors/show'
  get 'authors/new'
  post 'authors/create'
  # destroy 'articles/destroy'
end
