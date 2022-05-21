class Mark < ApplicationRecord
  belongs_to :markable, polymorphic: true
	belongs_to :user


	CONTEXTS = ["ingredient"]
end
