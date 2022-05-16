class Item < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order created_at: :asc }

  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

	has_many :ingredients, dependent: :nullify
  has_many :recipes, through: :ingredients, source: :recipe

  def to_s
    self.name
  end

  def self.search_by query
    return [] if query.blank?

    return self.where(["lower(name) like ?", "%#{query.strip.downcase}%"])
  end
end
