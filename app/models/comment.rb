class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

	scope :recent, -> { order "created_at DESC" }

	belongs_to :user

	validates :comment, presence: true

end
