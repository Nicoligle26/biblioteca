Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root to: 'books#index'
  
  get 'auhors/index'
  get 'authors/show'
  get 'authors/new'
  post 'authors/create'
  # destroy 'articles/destroy'

  # routes books 
  get 'books/index'
  get 'books/show'
  get 'books/create'
  get 'books/update'
  get 'books/delete'
end
