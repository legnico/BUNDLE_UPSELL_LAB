class CreateBundles < ActiveRecord::Migration[5.2]
  def change
    create_table :bundles do |t|
      t.string :product_1_id
      t.string :product_2_id
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
