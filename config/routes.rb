Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  # admin
  namespace :admin do
    resources :dashboard
    resources :events
    resources :settings, only: %i[index]
    scope 'stripe', as: :stripe do
      controller :stripe_connect do
        get :account_setup
      end
    end
  end
end
