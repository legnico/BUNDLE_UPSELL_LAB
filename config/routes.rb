Rails.application.routes.draw do
  root :to => 'bundles#bundle'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
