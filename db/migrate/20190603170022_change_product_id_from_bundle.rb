class ChangeProductIdFromBundle < ActiveRecord::Migration[5.2]
  def change
    change_column :bundles, :product_1_id, :string
    change_column :bundles, :product_2_id, :string
  end
end
