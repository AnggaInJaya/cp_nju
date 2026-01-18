class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :category_id
      t.string :category_name
      t.string :brand_name
      t.float :price

      t.timestamps
    end
  end
end
