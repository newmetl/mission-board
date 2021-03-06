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
    resources :roles
    resources :todos
    resources :categories do
      resources :posts
    end
  end

  root 'boards#index'
end
