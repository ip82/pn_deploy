Rails.application.routes.draw do

  root to: 'deploy#index'
  resources :deploy, only: [] do
    post 'deploy_branch', action: :deploy, as: :deploy, prefix: '', on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
