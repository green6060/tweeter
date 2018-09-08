Rails.application.routes.draw do
  devise_for :users do
    resources :posts
  end

  root 'posts#index'

  resources :posts do
    resources :comments
  end

  resources :bio



  # resources :users do
  #   resources :posts do
  #     resources :comments
  #   end
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
