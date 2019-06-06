class ProductAssociation < ApplicationRecord
  def self.find_associated_products(shopify_product_id)
    Shop.first.with_shopify!
    ProductAssociation.where(primary_product_id: shopify_product_id.to_s, published: true).map do |associated_product|
      ShopifyAPI::Product.find(associated_product.associated_product_id)
    end
  end
end
