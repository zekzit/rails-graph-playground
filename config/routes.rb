Rails.application.routes.draw do
  resources :vehicle_comment_templates
  resources :vehicle_comments
  resources :vehicles
  get '/', to: 'home#index'
  resources :nodes
  resources :inventory_types
  resources :inventories
  
  post 'collaborators/current_user/:id', to: 'collaborators#set_current_user', as: 'set_current_user'
  resources :collaborators
  resources :questions
  resources :answers
  
end
