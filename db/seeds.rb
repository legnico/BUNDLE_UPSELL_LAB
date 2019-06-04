
Bundle.destroy_all

puts 'Creating Bundles...'
bundle_1 = Bundle.new(
  product_1_id: '1762709667911',
  product_2_id: '1762577449031'
  )
bundle_1.save
puts 'Yes did it !'
