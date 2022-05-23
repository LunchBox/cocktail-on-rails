class Ingredient < ApplicationRecord
  belongs_to :recipe
	belongs_to :item, foreign_key: :name, optional: true

  validates :name, presence: true
  validates :quantity, presence: true
  validates :unit, presence: true

  scope :ordered, -> { order id: :asc }

  UNITS = [:ml, :cl, :oz, :shot, :part, :dash, :spoon, :barspoon, :tablespoon]

  before_validation :cleanup
  def cleanup
		self.name = self.name.to_s.strip
  end

	before_validation :save_item
	def save_item
		Item.find_or_create_by name: self.name, user: self.recipe.user
	end
end
