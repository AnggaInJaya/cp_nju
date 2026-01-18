ActiveAdmin.register Contact do

  permit_params :wa_number, :wa_title, :email, :active

  form do |f|
    f.inputs 'Service Details' do
      f.input :wa_number
      f.input :wa_title
      f.input :email
      f.input :active
    end
    f.actions
  end
end
