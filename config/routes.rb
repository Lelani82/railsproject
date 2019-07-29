Rails.application.routes.draw do
  get 'orders/new'
  resources :listings
  devise_for :users
  root 'listings#index'

  get 'items/boots', to: 'homepage#boots'
  get 'items/flats', to: 'homepage#flats'
  get 'items/heels', to: 'homepage#heels'
  get 'items/trainers', to: 'homepage#trainers'

  get 'orders', to: "orders#new", as: "new_order"                                                         

end