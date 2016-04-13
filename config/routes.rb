Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  root "posts#index"

  # specify the routes
  get '/about', to: 'pages#about'
end
