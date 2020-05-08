Rails.application.routes.draw do
  root "tweets#index"
  devise_for :users
  resources :users, only: :show
  resources :tweets do
    collection do
      get 'search'
    end
  end
end
