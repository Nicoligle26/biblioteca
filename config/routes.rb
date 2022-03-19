Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  root to: 'books#index'

  #routes authors
  get 'authors/index'
  get 'authors/show'
  get 'authors/new'
  post 'authors/create'

  # routes books 
  get 'books/show'
  get 'books/new'
  post 'books/create'
end
