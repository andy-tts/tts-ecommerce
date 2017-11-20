Rails.application.routes.draw do
  get 'storefront/all_items'

  get 'items_by_category' => 'storefront#items_by_category'
  get 'items_by_brand' => 'storefront#items_by_brand'


  devise_for :users
  resources :products
  root 'storefront#all_items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end