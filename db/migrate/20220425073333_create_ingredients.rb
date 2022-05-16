class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :name
      t.float :quantity, null: false
      t.string :unit, null: false
      t.timestamps
    end
  end
end
