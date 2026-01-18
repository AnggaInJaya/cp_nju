ActiveAdmin.register Service do
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
    column :active
    column :created_at
    actions
  end

  permit_params :name, :content, :active, avatars: []

  form do |f|
    f.inputs 'Service Details' do
      f.input :active
      f.input :avatars, as: :file, input_html: { multiple: true } # Allow multiple file selection
      f.input :name
      f.rich_text_area :content
    end
    f.actions
  end
end
