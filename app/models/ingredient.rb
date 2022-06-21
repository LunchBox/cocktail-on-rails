class Ingredient < ApplicationRecord
  belongs_to :recipe
	belongs_to :item, foreign_key: :name, optional: true

  validates :name, presence: true
  validates :quantity, presence: true
  validates :unit, presence: true

  scope :ordered, -> { order id: :asc }

  UNITS = [:ml, :cl, :oz, :shot, :part, :dash, :spoon, :barspoon, :tablespoon]

	def name= str
		return if str.blank?
		write_attribute :name, str.to_s.strip
	end

	before_validation :save_item
	def save_item
		Item.find_or_create_by name: self.name, user: self.recipe.user
	end

	def f_quantity
		if self.quantity.to_i == 0
			nil
		elsif self.quantity.to_i == self.quantity
			self.quantity.to_i
		else
			self.quantity
		end
	end
end
