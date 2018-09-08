Rails.application.routes.draw do
  devise_for :users do
    resources :posts
  end

  root 'posts#index'

  resources :bios

  resources :posts do
    resources :comments
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
