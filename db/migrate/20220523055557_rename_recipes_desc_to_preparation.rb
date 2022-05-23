class RenameRecipesDescToPreparation < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :desc, :preparation
  end
end
