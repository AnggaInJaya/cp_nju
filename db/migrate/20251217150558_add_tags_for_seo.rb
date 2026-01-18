class AddTagsForSeo < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :tags, :string
    add_column :categories, :tags, :string
  end
end
