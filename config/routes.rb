Rails.application.routes.draw do
  namespace :admin do
    resources :posts, only: %i[new edit update create destroy]
  end

  resources :posts, only: %i[show index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
