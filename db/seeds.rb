
ProductAssociation.destroy_all

puts 'Creating Bundles...'
association_1 = ProductAssociation.new(
  primary_product_id: '1762709667911',
  associated_product_id: '1762577449031'
  )
association_1.save
puts 'Yes did it !'

puts 'create default graphic design'
graphic_design_1 = GraphicSetting.new(
  add_to_cart_button_color: "green",
  add_to_cart_button_text_color: "blue",
  no_thanks_text_color: "grey",
  product_title_text_color: "black",
  regular_price_text_color: "blue",
  sale_price_text_color: "pink",
  upsell_popup_font_family: "Arial",
  add_to_cart_button_font_family: "Arial"
  )
graphic_design_1.save!
puts "design ok"
