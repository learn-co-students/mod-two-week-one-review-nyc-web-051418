Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :seas
# ,only: [:new,:index,:create,:show,:edit,:update,:destroy]

get "/",to: "seas#welcome"
end
