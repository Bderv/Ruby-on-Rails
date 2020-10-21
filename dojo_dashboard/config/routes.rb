Rails.application.routes.draw do
get 'dojos/:dojo_id/students' => 'students#index'
get  'dojos/:dojo_id/students/new' =>'students#new'
post  'dojos/:dojo_id/students' => 'students#create'
get  'dojos/:dojo_id/students/:id' => 'students#show'
get  'dojos/:dojo_id/students/:id/edit' =>'students#edit'
put  'dojos/:dojo_id/students/:id' =>'students#update'
delete  'dojos/:dojo_id/students/:id' =>'students#destroy'

get 'dojos' => 'dojos#index'
get 'dojos/new' =>'dojos#new'
post 'dojos' => 'dojos#create'
get 'dojos/:id' => 'dojos#show'
get 'dojos/:id/edit' => 'dojos#edit'
put 'dojos/:id' => 'dojos#update'
delete 'dojos/:id' => 'dojos#delete'
end
