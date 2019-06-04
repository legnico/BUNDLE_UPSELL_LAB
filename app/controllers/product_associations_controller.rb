class ProductAssociationsController < AuthenticatedController
  def index
    @product_associations = ProductAssociation.all
    @products = ShopifyAPI::Product.find(:all)
  end

  def new
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)
    @product_association = ProductAssociation.new
  end

  def create
    @product_association = product_association.new(product_association_params)
    if @product_association.save
      redirect_to product_association_path(@product_association)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def product_association_params
    params.require(:product_association).permit(:primary_product_id, :associated_product_id)
  end
end
