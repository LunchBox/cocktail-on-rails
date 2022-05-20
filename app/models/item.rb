class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  scope :ordered, -> { order created_at: :asc }

  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

	has_many :ingredients, dependent: :nullify
  has_many :recipes, through: :ingredients, source: :recipe

	belongs_to :parent, class_name: "Item", foreign_key: :parent_id, optional: true
	has_many :children, class_name: "Item", foreign_key: :parent_id

  acts_as_taggable_on :tags


  before_validation :cleanup
  def cleanup
    self.name = self.class.format_name(self.name)
  end

  def self.format_name str
    str.to_s.strip.titleize
  end

  def to_s
    self.name
  end

  def parent_path
    self.parent ? self.parent.parent_path + [self.parent] : []
  end

  def involved_ingredient_size
    self.ingredients.size + (self.parent ? self.parent.involved_ingredient_size : 0)
  end

  def involved_ingredients
    Ingredient.where ["item_id in (?)", (self.parent_path + [self]).map(&:id)]
  end


  def self.search_by query
    return [] if query.blank?

    return self.where(["lower(name) like ?", "%#{query.strip.downcase}%"])
  end

  attr_accessor :parent_name # => @parent_name
  def parent_name
    self.parent.try :name
  end

	before_validation :save_parent
	def save_parent
    name = self.class.format_name(@parent_name)

    unless name.blank?
      item = Item.find_or_create_by name: name
      self.parent = item
    end
	end
end
