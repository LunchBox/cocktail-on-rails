class Recipe < ApplicationRecord
  belongs_to :user

  has_one_attached :cover_image do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true


	has_many :comments, as: :commentable 

  validates :name, presence: true, uniqueness: {scope: :user_id}

  scope :ordered, -> { order id: :desc }


  # after_create_commit -> { broadcast_prepend_to "recipes", partial: "recipes/recipe", locals: { recipe: self }, target: "recipes" }
  # after_create_commit -> { broadcast_prepend_to "recipes" }
  # after_update_commit -> { broadcast_replace_to "recipes" }
  # after_destroy_commit -> { broadcast_remove_to "recipes" }
  broadcasts_to ->(recipe) { "recipes" }, inserts_by: :prepend

  after_commit :send_counter, on: [:create, :destroy]
  def send_counter
    broadcast_update_to "recipes_count", target: "recipes_count", html: "There are #{Recipe.count} recipes now."
  end

  def to_s
    self.name
  end

  def self.search_by query
    return [] if query.blank?

    return self.where(["name like ?", "%#{query}%"])
  end
end
