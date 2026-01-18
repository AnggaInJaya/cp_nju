ActiveAdmin.register Banner do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  filter :title

  # controller do
  #   def find_resource
  #     # Custom logic to find the resource, e.g., applying a specific scope
  #     scoped_collection.where(slug: params[:id]).first!
  #   end
  # end

  permit_params :title, :description, :photo

  form do |f|
    f.inputs 'Service Details' do
      f.input :title
      f.input :description
      f.input :photo, as: :file
    end
    f.actions
  end
end
