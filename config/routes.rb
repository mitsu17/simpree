Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show
  root to: 'posts#index'
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end

end