Rails.application.routes.draw do
  get 'login/create'
  get 'users/auth', to: 'users#auth'
  get 'users', to: 'users#show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end