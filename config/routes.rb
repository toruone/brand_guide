Rails.application.routes.draw do
  devise_for :users
  get 'shops/show'
  root to: "brands#index"
  resources :brands
  resources :info_sites
  resources :shops

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
