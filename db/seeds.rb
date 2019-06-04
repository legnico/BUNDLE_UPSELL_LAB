
ProductAssociation.destroy_all

puts 'Creating Bundles...'
association_1 = ProductAssociation.new(
  primary_product_id: '1762709667911',
  associated_product_id: '1762577449031'
  )
association_1.save
puts 'Yes did it !'
