Rails.application.routes.draw do
  resources :todos
  resources :users, only: [:index, :create]
  resources :roles
  get '/enter' => 'missionboard#enter', as: 'enter'
  get '/missionboard' => 'missionboard#show', as: 'missionboard'
  get '/exit' => 'missionboard#exit', as: 'exit'
  root 'users#index'
end
