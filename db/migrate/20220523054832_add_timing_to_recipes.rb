class AddTimingToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :timing, :string
  end
end
