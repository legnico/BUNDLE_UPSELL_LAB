class ProductAssociationsController < AuthenticatedController
  skip_before_action :verify_authenticity_token, :only => [:toggle_online]
  before_action :identify_user

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
    @product_association = ProductAssociation.new(product_association_params)
    if @product_association.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @product_association = ProductAssociation.find(params[:id])
    @product_association.destroy
    # authorize @product_association
    respond_to do |format|
      format.html { redirect_to product_associations_path }
      format.js
    end
  end

  def toggle_online
    @product_association = ProductAssociation.find(params[:id])
    @product_association.published = !@product_association.published
    @product_association.save
    respond_to do |format|
      format.html { redirect_to product_associations_path }
    end
  end

  def identify_user
    @current_shop = ShopifyAPI::Shop.current
    @current_shop_name = @current_shop.name
    @shop_owner_name = @current_shop.shop_owner
    @shop_owner_name_initial = @shop_owner_name.split(" ").map { |x| x.split("").first }.join("")
    @admin_shopify_path = "https://#{@current_shop.domain}/admin/"
  end

  private

  def product_association_params
    params.require(:product_association).permit(:primary_product_id, :associated_product_id)
  end
end
