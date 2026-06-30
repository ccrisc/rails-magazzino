Rails.application.routes.draw do
  devise_for :managers, controllers: {
    sessions: 'managers/sessions',
    registrations: 'managers/registrations'
  }
  get 'items/index'
  get 'users/index'
  resources :orders#, only: [:new, :create, :show]
  resources :users do
    member do
      get 'show_orders'
    end
    end
  resources :items do
    get 'new_stock', on: :collection
    get 'orders_by_item', on: :member
  end
  resources :suppliers
  resources :categories
  get "companies" => "companies#index", as: :companies
  get "companies/:id/select" => "companies#select", as: :select_company
  get "up" => "rails/health#show", as: :rails_health_check

  # Uncomment and modify the root route
  root "home#index"
end
