Rails.application.routes.draw do

  get 'sessions/new'

  get 'users/new'

  get 'user/new'

  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end


<<<<<<< HEAD
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
=======
  resources :users
  resources :microposts, only: [:create, :destroy]
>>>>>>> 5a1ee018958dbe351607f940035d79221e78070c

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
