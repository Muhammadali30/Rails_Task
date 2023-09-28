Rails.application.routes.draw do
  resources :students
  resources :teachers
  resources :courses


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
