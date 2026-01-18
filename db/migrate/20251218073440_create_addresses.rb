class CreateAddresses < ActiveRecord::Migration[7.1]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :cid
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
