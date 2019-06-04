class BundlesController < AuthenticatedController
  def index
    @bundles = Bundle.all
    @products = ShopifyAPI::Product.find(:all)
    #binding.pry
  end

  def new
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)
    @bundle = Bundle.new
  end

  def create
    @bundle = Bundle.new(bundle_params)
    if @bundle.save
      redirect_to root_path
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

  def bundle_params
    params.require(:bundle).permit(:product_1_id, :product_2_id)
  end
end
