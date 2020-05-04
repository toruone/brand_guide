Rails.application.routes.draw do
  get 'contact', to: "home#contact",as: 'contact'
  get 'about', to: "home#about", as: 'about'

  devise_for :admins, controllers: {
    sessions: 'owner/sessions',
    passwords: 'owner/passwords',
    registrations: 'owner/registrations'
  }

  devise_for :users, controllers: {
    sessions: 'login/sessions',
    passwords: 'login/passwords',
    registrations: 'login/registrations'
  }

  resources :brands do
    resource :brand_users, only: [:create, :destroy]
  end

  resources :info_sites do
    resource :info_users, only: [:create, :destroy]
  end

  resources :contacts, only: [:new, :create]

  resources :shops
  namespace :login do
    resource :mypage, only: [:show] do
      resource :profile, only: [:create, :edit, :update]
    end
  end

  namespace :owner do
    root to: "brands#index"
    resources :brands
    resources :info_sites
    resources :shops
  end
  root to: "brands#index"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
