class BundlesController < AuthenticatedController
  def index
    @bundles = Bundle.all
  end

  def new
    @products = ShopifyAPI::Product.find(:all)
    @webhooks = ShopifyAPI::Webhook.find(:all)
    @bundle = Bundle.new
  end

  def create
    @bundle = Bundle.new(bundle_params)
    if @bundle.save
      redirect_to bundle_path(@bundle)
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
    params.require(:bundle).permit(:product_1, :product_2)
  end
end
