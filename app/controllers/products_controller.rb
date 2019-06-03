class ProductsController < ApplicationController
<<<<<<< HEAD
=======
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end
>>>>>>> bee99d63a5e8b12462b7e3381910e47640be607f
end
