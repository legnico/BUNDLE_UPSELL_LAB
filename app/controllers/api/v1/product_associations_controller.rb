class Api::V1::ProductAssociationsController < Api::V1::BaseController
  # skip_after_action :verify_authorized

  def products
    @product_ids = ProductAssociation.find_associated_products(params[:product_id])
    @shop = Shop.find_by(shopify_domain: request.headers["X-Shopify-Domain"])
  end
end
