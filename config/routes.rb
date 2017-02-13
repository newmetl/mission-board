Rails.application.routes.draw do
  resources :categories do
    resources :posts
  end
  resources :todos
  resources :users, only: [:index, :create]
  resources :roles
  get '/enter' => 'missionboard#enter', as: 'enter'
  get '/missionboard' => 'missionboard#show', as: 'missionboard'
  get '/exit' => 'missionboard#exit', as: 'exit'
  root 'users#index'
end
