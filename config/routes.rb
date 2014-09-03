Project1::Application.routes.draw do
  
  get "sessions/new"
  get "sessions/create"
  get "sesions/destroy"
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'users#index'
  
  resources :users
  resources :sessions
  resources :tracks do
   resources :comments do
    resources :reports, only: :create
   end
 end



  
end
