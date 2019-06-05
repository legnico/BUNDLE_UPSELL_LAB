Rails.application.routes.draw do
  root to: 'product_associations#index'
  resources :product_associations, only: [:index, :new, :edit, :destroy]
  mount ShopifyApp::Engine, at: '/'

  # Our API (to send info to shopify)
  # constraints format: :json do
  #   get "api/v1/product_associations/:product_id", to: "api/v1/product_associations#products"
  # end
  namespace :api, defaults: { format: :json } do
     namespace :v1 do
      get "product_associations/:product_id", to: "product_associations#products"
     end
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
