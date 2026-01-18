class About < ApplicationRecord
  has_rich_text :content
  has_rich_text :short_content

  def self.ransackable_attributes(auth_object = nil)
    %w[active created_at content description id id_value name short_content updated_at]
  end
end
