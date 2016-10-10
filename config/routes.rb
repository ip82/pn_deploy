Rails.application.routes.draw do

  root to: 'deploy#index'
  resources :routes, only: [] do
    post 'deploy/:branch', action: :deploy, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
