class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :item, optional: true

  validates :name, presence: true
  validates :quantity, presence: true
  validates :unit, presence: true

  scope :ordered, -> { order id: :asc }

  UNITS = [:ml, :cl, :oz, :part, :dash, :spoon, :tablespoon]

  def name
    self.item.try(:name) || @name
  end

	before_validation :save_item
	def save_item
		self.name = self.name.to_s.strip.titleize
		item = Item.find_or_create_by name: self.name
		self.item = item
	end
end
