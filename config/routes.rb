Rails.application.routes.draw do
  root to: "brands#index"
  resources :brands
  resources :info_sites
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
