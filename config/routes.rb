Rails.application.routes.draw do
  root 'users#index'
  resources :users
  mount ActionCable.server, at: '/cable'
end
