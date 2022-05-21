class Mark < ApplicationRecord
  belongs_to :markable, polymorphic: true
	belongs_to :user


	CONTEXTS = ["bar_item", "wish_item"]
end
