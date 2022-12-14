Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # Syntax for REST: HTTP Verb, URL, controller#action
  resources :spices, only: [:index, :create, :update, :destroy]

  # Since I'm not planning on using a PUT update can I just have resources :spices ?
  
end
