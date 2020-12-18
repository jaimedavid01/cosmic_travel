Rails.application.routes.draw do
  resources :planets
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Scientists index, show, new, create, edit, update, delete
  #Mission new, create

get '/scientists', to: 'scientists#index', as: 'scientists'
get '/scientists/new', to: 'scientists#new', as: 'new_scientist'
post '/scientists', to: 'scientists#create'
get '/scientists/:id', to: 'scientists#show', as: 'scientist'
get '/scientists/:id/edit', to: 'scientists#edit', as: 'edit_scientist'
patch '/scientists/:id', to: 'scientists#update'
delete '/scientists/:id', to: 'scientists#destroy'

get '/missions', to: 'missions#index', as: 'missions'
get '/missions/new', to: 'missions#new', as: 'new_missions'
post '/missions', to: 'missions#create'
end
