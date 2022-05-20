class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  default_scope -> { order('created_at ASC') }

	belongs_to :user
end
