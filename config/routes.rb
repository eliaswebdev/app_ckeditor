Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end