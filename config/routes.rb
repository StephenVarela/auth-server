Rails.application.routes.draw do
  get 'login/create'
  get 'users/auth', to: 'users#auth'
  post 'users', to: 'users#create'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
