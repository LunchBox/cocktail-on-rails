class RemoveItemFromIngredients < ActiveRecord::Migration[7.0]
  def change
		remove_reference :ingredients, :item, foreign_key: true
  end
end
