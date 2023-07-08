Rails.application.routes.draw do
  root 'splash#index'
  devise_for :users
  resources :categories, only: [:index, :show, :create, :destroy, :new] do
    resources :group, only: [:index, :create, :destroy, :new]
  end
end
