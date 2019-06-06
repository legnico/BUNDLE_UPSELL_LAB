class AddInputsToGraphicSettings < ActiveRecord::Migration[5.2]
  def change
     add_column :graphic_settings, :add_to_cart_button_color, :string
     add_column :graphic_settings, :add_to_cart_button_text_color, :string
     add_column :graphic_settings, :no_thanks_text_color, :string
     add_column :graphic_settings, :product_title_text_color, :string
     add_column :graphic_settings, :regular_price_text_color, :string
     add_column :graphic_settings, :sale_price_text_color, :string
     add_column :graphic_settings, :upsell_popup_font_family, :string
     add_column :graphic_settings, :add_to_cart_button_font_family, :string
  end
end
