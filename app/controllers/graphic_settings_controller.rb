class GraphicSettingsController < ApplicationController

  def new
    @graphic_settings = GraphicSetting.new
    # => ajouter ici en back les graphic settings par defaut
  end

  def edit
    # action appelee en cliquant sur Settings dans l'app
    #temporary_settings = GraphicSetting.find(2)
    #temporary_settings.destroy
    #@temporary_settings = GraphicSetting.find(1)
    @graphic_settings = GraphicSetting.find(params[:id])
    Shop.first.with_shopify!
    @products = ShopifyAPI::Product.find(:all)
  end

  def update
  end

end
