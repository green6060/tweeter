Rails.application.routes.draw do
  resources :images
  root 'posts#index'
  
  devise_for :users 

  resources :bios

  resources :posts do
    resources :comments
  end

  resources :users do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
