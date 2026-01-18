class Banner < ApplicationRecord
  has_one_attached :photo

  def self.ransackable_attributes(auth_object = nil)
    %w[id title description created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[photo_attachment photo_blob]
  end
end
