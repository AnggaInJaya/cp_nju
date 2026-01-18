ActiveAdmin.register About do
  filter :name

  controller do
    # def find_resource
    #   scoped_collection.where(slug: params[:id]).first!
    # end
  end

  index do
    selectable_column
    id_column
    column :name
    column :active
    column :created_at
    actions
  end

  permit_params :name, :content, :active, :short_content

  form do |f|
    f.inputs 'About Details' do
      f.input :active
      f.input :name
    end
    f.inputs 'Tentang Kami Ringkas Home' do
      f.rich_text_area :short_content
    end
    f.inputs 'Tentang Kami Content Page' do
      f.rich_text_area :content
    end
    f.actions
  end
end
