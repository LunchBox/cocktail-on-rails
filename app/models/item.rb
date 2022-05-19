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

  acts_as_taggable_on :tags


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

  attr_accessor :_parent_name
  def parent_name
    self.parent.try :name
  end
  def parent_name= val
    self._parent_name = val
  end

	before_validation :save_parent
	def save_parent
		self._parent_name = self._parent_name.to_s.strip.titleize

    unless self._parent_name.blank?
      item = Item.find_or_create_by name: self._parent_name
      self.parent = item
    end
	end
end
