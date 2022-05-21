class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes

  has_many :marks, dependent: :destroy

	def bar_items
		Item.joins(:marks).where(marks: {context: "ingredient", user_id: self.id})
	end

	def has_ingredient? item
		self.marks.find_by context: "ingredient", markable: item
	end
end
