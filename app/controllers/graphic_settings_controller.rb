class GraphicSettingsController < ApplicationController

  def new
    @graphic_settings = GraphicSetting.new
    # => ajouter ici en back les graphic settings par defaut
  end

  def edit
    # action appelee en cliquant sur Settings dans l'app
    @graphic_settings = GraphicSetting.new
  end

  def update
  end

end
