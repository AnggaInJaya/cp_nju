ActiveAdmin.register Tentang do
  filter :name

  controller do
    # def find_resource
    #   scoped_collection.where(slug: params[:id]).first!
    # end
  end

  permit_params :name, :content

  form do |f|
    f.inputs 'Product Details' do
      f.input :name
      f.rich_text_area :content
    end
    f.actions
  end
end
