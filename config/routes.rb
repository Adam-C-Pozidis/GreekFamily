Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#index"
  resources :menu_items, only: :show
  resources :order_items, only: %i[create]
  resources :shopping_carts, only: :show
  resources :orders, only: %i[index create]

  get 'confirmation', to: 'pages#confirmation'
  get 'success', to: 'pages#success'
  get 'fail', to: 'pages#fail'
end
