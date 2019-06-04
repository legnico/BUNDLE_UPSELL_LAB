class CreateProductAssociations < ActiveRecord::Migration[5.2]
  def change
    create_table :product_associations do |t|
      t.string :primary_product_id
      t.string :associated_product_id
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
