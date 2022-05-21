class AddIndexToIngredientsAndItems < ActiveRecord::Migration[7.0]
  def change
		add_index :ingredients, :name
		add_index :items, :name
  end
end
