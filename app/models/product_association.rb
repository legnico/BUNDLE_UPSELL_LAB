class ProductAssociation < ApplicationRecord
  def self.find_associated_products(shopify_product_id)
    ProductAssociation.where(primary_product_id: shopify_product_id.to_s, published: true).map { |x| x["associated_product_id"] }
  end
end
