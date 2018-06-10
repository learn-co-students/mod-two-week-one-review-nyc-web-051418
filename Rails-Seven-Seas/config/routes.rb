Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Welcome Page
  get '/' => 'static#index'
  
  # Seas Page
  get '/seas' => 'seas#index'

  # Show ID Pages
  get '/seas/:id' => 'seas#show'

  # Show ID Edit Page
  get '/seas/:id/edit' => 'seas#edit'

end
