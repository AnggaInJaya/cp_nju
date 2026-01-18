class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :wa_number
      t.string :wa_title
      t.string :email
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
