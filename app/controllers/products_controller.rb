class ProductsController < ApplicationController
  def index
    @productss = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
  end
end
