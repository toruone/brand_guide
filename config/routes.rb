Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  get 'shops/show'
  root to: "brands#index"

  resources :brands do
    resource :brand_users, only: [:create, :destroy]
  end

  resources :info_sites do
    resource :info_users, only: [:create, :destroy]
  end

  resources :shops
  namespace :login do
    resource :mypage, only: [:show] do
      resource :profile, only: [:create, :edit, :update]
    end
  end

end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
