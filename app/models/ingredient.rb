class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :item, optional: true

  validates :name, presence: true
  validates :quantity, presence: true
  validates :unit, presence: true

  scope :ordered, -> { order id: :asc }

  UNITS = [:ml, :cl, :oz, :part, :dash, :spoon, :tablespoon]

  def _name
    read_attribute(:name)
  end

  def name
    self.item.try(:name) || self._name
  end

  before_validation :save_item
  def save_item
    name = Item.format_name(self._name)
    item = Item.find_or_create_by name: name
    self.item = item
  end

end
