Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  resources :roles
  get '/missionboard' => 'missionboard#show', as: 'missionboard'
  root 'users#index'
end
