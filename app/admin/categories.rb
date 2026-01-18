ActiveAdmin.register Category do
  filter :name

  controller do
    def find_resource
      scoped_collection.where(slug: params[:id]).first!
    end
  end

  permit_params :name, :description, :avatar

  form do |f|
    f.inputs 'Product Details' do
      f.input :name
      f.input :description
      # f.input :attachments, as: :file, input_html: { multiple: true } # Allow multiple file selection
      f.input :avatar, as: :file
    end
    f.actions
  end
end
