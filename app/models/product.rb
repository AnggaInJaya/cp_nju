class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many_attached :avatars do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
  end
  has_many_attached :photos

  belongs_to :category

  def self.ransackable_attributes(auth_object = nil)
    %w[id name description category_id created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[avatar_attachment avatar_blob category]
  end
end
