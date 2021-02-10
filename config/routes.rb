Rails.application.routes.draw do
  root "posts#index"

  mount Blog::API => '/'
  resources :posts
end
