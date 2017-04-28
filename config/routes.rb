Rails.application.routes.draw do
  resources :users

  resources :boards
  resources :moods
  resources :categories do
    resources :posts
  end
  resources :todos
  resources :roles
  get '/enter' => 'missionboard#enter', as: 'enter'
  get '/missionboard' => 'missionboard#show', as: 'missionboard'
  get '/exit' => 'missionboard#exit', as: 'exit'

  root 'boards#index'
end
