class ProductAssociation < ApplicationRecord
  def self.find_associated_products(shopify_id)
    ProductAssociation.where(primary_product_id: shopify_id.to_s).map { |x| x["associated_product_id"] }
  end
end
