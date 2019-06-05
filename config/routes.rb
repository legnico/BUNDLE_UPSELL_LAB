Rails.application.routes.draw do
  root to: 'product_associations#index'
  patch "product_associations/:id/setonline", to: "product_associations#toggle_online", as: "toggle_online"

  resources :product_associations, only: [:index, :new, :create, :edit, :destroy]
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
