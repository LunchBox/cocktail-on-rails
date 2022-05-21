class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

	scope :recent, -> { order "created_at DESC" }

  # default_scope -> { order('created_at ASC') }

	belongs_to :user
end
