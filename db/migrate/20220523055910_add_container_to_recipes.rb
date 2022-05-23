class AddContainerToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :container, :string
  end
end
