class Contact < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[active created_at wa_number wa_title email id id_value updated_at]
  end
end
