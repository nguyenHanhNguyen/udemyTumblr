Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :comments
  end
  root "posts#index"

  # specify the routes
  get '/about', to: 'pages#about'
end
