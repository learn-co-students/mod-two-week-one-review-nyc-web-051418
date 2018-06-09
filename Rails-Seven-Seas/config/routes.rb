Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/seas', to:'seas#index'
  post '/seas', to:'seas#create'



  get '/seas/new', to:'seas#new', as:'new_sea'



  get '/seas/:id/edit', to:'seas#edit', as:'edit_sea'
  get '/seas/:id', to:'seas#show', as:'sea'

  patch '/seas/:id', to:'seas#update'

  delete '/seas/:id', to:'seas#destroy'


  # resources :seas
  get '/', to: "seas#welcome"
end
