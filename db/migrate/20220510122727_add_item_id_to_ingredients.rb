class AddItemIdToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_reference :ingredients, :item, foreign_key: true
  end
end
