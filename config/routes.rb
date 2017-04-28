Rails.application.routes.draw do
  resources :users do
    collection do
      get 'board_users'
    end
  end

  resources :boards do
    get 'users'
    get 'enter'
    get 'exit'
    post 'add-user'
    put 'remove-user'
    resources :moods
  end
  # resources :moods
  resources :categories do
    resources :posts
  end
  resources :todos
  resources :roles

  root 'boards#index'
end
