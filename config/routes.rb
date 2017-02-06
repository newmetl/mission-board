Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  get '/missionboard' => 'missionboard#show', as: 'missionboard'
end
