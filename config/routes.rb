Rails.application.routes.draw do
  devise_for :users

  root 'posts#index'

  resources :users do
    resources :bios
  end

  resources :users do
    resources :posts
  end

  resources :users do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
