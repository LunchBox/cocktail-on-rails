class Item < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  scope :ordered, -> { order created_at: :asc }

  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

	has_many :ingredients, foreign_key: :name
  has_many :recipes, through: :ingredients, source: :recipe

	has_many :comments, as: :commentable 

	belongs_to :user

  acts_as_taggable_on :labels
  accepts_nested_attributes_for :labels, reject_if: :all_blank, allow_destroy: true


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

  def collect_labeled_items ext = []
    # self.parent ? self.parent.parent_path + [self.parent] : []
		unless ext.include? self
			ext << self
			Item.where(name: self.label_list).each do |item|
				item.collect_labeled_items ext
			end
		end
		ext
  end

  def involved_ingredient_size
		self.involved_ingredients.size
  end

  def involved_ingredients
    # Ingredient.where ["name in (?)", (self.parent_path + [self]).map(&:name)]
		Ingredient.where ["name in (?)", self.collect_labeled_items.map(&:name)]
  end


  def self.search_by query
    return [] if query.blank?

    return self.where(["lower(name) like ?", "%#{query.strip.downcase}%"])
  end
end
