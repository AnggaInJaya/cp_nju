class Tentang < ApplicationRecord
  has_rich_text :content

  def self.ransackable_attributes(auth_object = nil)
    %w[active created_at content id id_value name updated_at]
  end
end
