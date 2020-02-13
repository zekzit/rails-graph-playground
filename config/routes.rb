Rails.application.routes.draw do
  resources :nodes
  resources :inventory_types
  resources :inventories
  
  post 'collaborators/current_user/:id', to: 'collaborators#set_current_user', as: 'set_current_user'
  resources :collaborators
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
