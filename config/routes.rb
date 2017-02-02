Rails.application.routes.draw do
  resources :mircroposts
  resources :users
  root 'users#index'
  root 'microposts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
