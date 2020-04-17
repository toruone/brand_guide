Rails.application.routes.draw do
  devise_for :users
  get 'shops/show'
  root to: "brands#index"

  resources :brands do
    resource :brand_users, only: [:create, :destroy]
  end

  resources :info_sites do
    resource :info_users, only: [:create, :destroy]
  end
  resources :shops

  resources :mypages, only: [:index]

end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
