class CreateGraphicSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :graphic_settings do |t|

      t.timestamps
    end
  end
end
