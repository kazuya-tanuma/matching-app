Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :relationships, only: [:create, :destroy]
    get :following, on: :member
    get :followers, on: :member
  end
end
