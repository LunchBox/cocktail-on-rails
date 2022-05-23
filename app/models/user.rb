class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  has_many :items

  has_many :marks, dependent: :destroy

  def recipe_containers
    self.recipes.select("distinct container").where.not(container: nil).order("container asc").map(&:container)
  end

	def bar_items
		Item.joins(:marks).where(marks: {context: "bar_item", user_id: self.id})
	end

	def in_my_bar? item
		self.marks.find_by context: "bar_item", markable: item
	end

	def has_ingredient? item_name
		items = self.bar_items
		item_names = items.map &:name
		return true if item_names.include? item_name

		items.each do |item|
			return true if item.collect_labeled_items.map(&:name).include? item_name
		end
		false
	end

	def wish_items
		Item.joins(:marks).where(marks: {context: "wish_item", user_id: self.id})
	end

	def in_my_wish_list? item
		self.marks.find_by context: "wish_item", markable: item
	end

	def available_recipes
		ingredients = self.bar_items.map(&:involved_ingredients).flatten.uniq
		all_names = ingredients.map(&:name)
		recipes = Recipe.where(id: ingredients.map(&:recipe_id))
		recipes.filter do |r|
			(r.ingredients.select(:name).map(&:name) - all_names).empty?
		end
	end
end
