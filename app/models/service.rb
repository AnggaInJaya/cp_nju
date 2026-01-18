class Service < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many_attached :avatars
  has_rich_text :content

  def self.ransackable_attributes(auth_object = nil)
    %w[id name description content created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[avatar_attachment avatar_blob content]
  end
end
