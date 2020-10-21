Rails.application.routes.draw do


  get 'dojos' => 'dojos#index', as: 'dojo'

  get 'dojos/:id' =>'dojos#show'

  root 'dojos#hello'

  post 'dojos' => 'dojos#create'
end
