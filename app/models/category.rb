class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one_attached :avatar
  has_one_attached :photo
  has_many :products

  def self.ransackable_attributes(auth_object = nil)
    %w[id name description created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[avatar_attachment avatar_blob category]
  end
end
