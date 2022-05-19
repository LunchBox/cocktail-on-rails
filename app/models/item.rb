class Item < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order created_at: :asc }

  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

	has_many :ingredients, dependent: :nullify
  has_many :recipes, through: :ingredients, source: :recipe

	belongs_to :parent, class_name: "Item", foreign_key: :parent_id, optional: true
	has_many :children, class_name: "Item", foreign_key: :parent_id

  def to_s
    self.name
  end

  def parent_path
    self.parent ? self.parent.parent_path + [self.parent] : []
  end


  before_validation :cleanup
  def cleanup
    self.name = self.name.to_s.strip
  end

  def self.search_by query
    return [] if query.blank?

    return self.where(["lower(name) like ?", "%#{query.strip.downcase}%"])
  end

  def prent_name
    self.parent.try :name
  end
  attr_accessor :parent_name
	before_validation :save_parent
	def save_parent
		self.parent_name = self.parent_name.to_s.strip.titleize
    p self.parent_name
    unless self.parent_name.blank?
      item = Item.find_or_create_by name: self.parent_name
      p item
      self.parent = item
    end
	end
end
