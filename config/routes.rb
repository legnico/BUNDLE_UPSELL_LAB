Rails.application.routes.draw do
  root to: 'bundles#index'
  resources :bundles, only: [:index, :new, :edit]
  mount ShopifyApp::Engine, at: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
