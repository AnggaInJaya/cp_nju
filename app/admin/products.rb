ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :brand_id, :category_id, :category_name, :brand_name, :slug
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :brand_id, :category_id, :category_name, :brand_name, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :name

  controller do
    def find_resource
      # Custom logic to find the resource, e.g., applying a specific scope
      scoped_collection.where(slug: params[:id]).first!
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :category_name
    column :created_at
    actions
  end

  permit_params :name, :description, :category_id, :brand_id, avatars: [] # Permit avatars as an array
  form do |f|
    f.inputs 'Product Details' do
      f.input :name
      f.input :avatars, as: :file, input_html: { multiple: true } # Allow multiple file selection
      # f.input :photos, as: :file, input_html: { multiple: true } # Allow multiple file selection
      f.input :description
      f.input :category, as: :select, collection: Category.all.map { |c| [c.name, c.id] }
    end
    f.actions
  end
end
