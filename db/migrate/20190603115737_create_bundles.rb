class CreateBundles < ActiveRecord::Migration[5.2]
  def change
    create_table :bundles do |t|
      t.integer :product_1_id
      t.integer :product_2_id
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
