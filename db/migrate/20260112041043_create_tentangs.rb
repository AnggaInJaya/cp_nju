class CreateTentangs < ActiveRecord::Migration[7.1]
  def change
    create_table :tentangs do |t|
      t.string :name
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
