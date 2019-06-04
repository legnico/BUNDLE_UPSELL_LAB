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
      redirect_to bundle_path(@bundle)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @bundle = Bundle.find(params[:id])
    @bundle.destroy
    #authorize @bundle
    redirect_to root_path
    flash[:notice] = "Votre Bundle à été supprimé"
  end


  def toggle_online
    @bundle = Bundle.find(params[:id])
    #authorize @bundle
    @bundle.online = !@bundle.online
    @bundle.save
      respond_to do |format|
        format.html { redirect_to bundles_path }
        format.js
      end
  end

  private

  def bundle_params
    params.require(:bundle).permit(:product_1, :product_2)
  end
end
