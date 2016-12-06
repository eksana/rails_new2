class CreateTheme1s < ActiveRecord::Migration[5.0]
  def change
    create_table :theme1s do |t|
      t.string :name
      t.integer :qty_items

      t.timestamps
    end
  end
end
