# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bundle.destroy_all

puts 'Creating Bundles...'
bundle_1 = Bundle.new(
  product_1_id: '1762709667911',
  product_2_id: '1762577449031'
  )
bundle_1.save
puts 'Yes did it !'
