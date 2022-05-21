class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes

  has_many :marks, dependent: :destroy

	def bar_items
		Item.joins(:marks).where(marks: {context: "bar_item", user_id: self.id})
	end

	def in_my_bar? item
		self.marks.find_by context: "bar_item", markable: item
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
