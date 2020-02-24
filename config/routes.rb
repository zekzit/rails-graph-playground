Rails.application.routes.draw do
  get '/', to: 'home#index'
  resources :nodes
  resources :inventory_types
  resources :inventories
  
  post 'collaborators/current_user/:id', to: 'collaborators#set_current_user', as: 'set_current_user'
  resources :collaborators
  resources :questions
  resources :answers
  
  resources :vehicles do
    post '/comment', to: 'vehicles#new_comment', as: 'new_comment'
  end
  resources :vehicle_comments
  resources :vehicle_comment_templates
end
