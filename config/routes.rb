Rails.application.routes.draw do
  devise_for :users
  mount ImageLibrary::Engine => "/admin"
  resources :posts
  root to: 'posts#index'
end
