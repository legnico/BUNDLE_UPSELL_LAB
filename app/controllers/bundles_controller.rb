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

  def easy
    # products = []
    # @products.title.each do |title|
    #   products << product.title
    # end
    @products = ShopifyAPI::Product.find("product_id": 17273791545415)

    binding.pry
  end

  private

  def bundle_params
    params.require(:bundle).permit(:product_1, :product_2)
  end
end
