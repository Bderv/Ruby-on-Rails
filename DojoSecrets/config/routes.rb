Rails.application.routes.draw do
  resources :users

  post 'likes' => 'likes#create', as: 'like'

  delete 'likes' => 'likes#destroy', as: 'unlike'

  get 'login' => 'sessions#new', as: 'login'
  
  delete 'logout' => 'sessions#destroy', as: 'logout'
  
  post 'login' => 'sessions#create'
  
  get 'secrets' => 'secrets#index'

  post 'secrets' => 'secrets#create'

  delete 'secrets/:id' => 'secrets#destroy'
end
