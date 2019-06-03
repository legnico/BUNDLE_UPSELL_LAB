Bundle.destroy_all

puts 'Creating Bundles...'
bundle_1 = Bundle.new(
  product_1_id: '17273051054151',
  product_2_id: '17273067143239'
  )
bundle_1.save
puts 'Yes did it !'
