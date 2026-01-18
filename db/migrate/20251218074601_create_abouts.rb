class CreateAbouts < ActiveRecord::Migration[7.1]
  def change
    create_table :abouts do |t|
      t.string :name
      t.text :description
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
