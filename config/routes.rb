Rails.application.routes.draw do
  root to: 'internet_orders#index'
  resources :internet_orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
