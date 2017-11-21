Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'cart/view_order'
  get 'view_order' => "cart#view_order"
  get 'cart/checkout'
  get 'checkout' => 'cart#checkout'

  get 'storefront/all_items'
  get 'storefront/items_by_brand'
  get 'storefront/items_by_category'
  
  get 'items_by_category' => 'storefront#items_by_category'
  get 'items_by_brand' => 'storefront#items_by_brand'

  devise_for :users
  resources :products
  root 'storefront#all_items'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
