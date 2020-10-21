Rails.application.routes.draw do  
  resources :users

  post 'comments/:event_id' => 'comments#create'
  
  post 'attend/:event_id' => 'event_attendees#create'

  delete 'unattend/:event_id' => 'event_attendees#destroy'

  get  'events' => 'events#index'

  post 'events' => 'events#create'

  get 'events/:id' => 'events#show', as: 'event_show'

  get 'events/:id/edit' => 'events#edit'

  put 'events/:id/edit' => 'events#update'

  delete 'events/:id' => 'events#destroy'

  root 'sessions#new', as: 'login'

  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy', as: 'logout'


end
