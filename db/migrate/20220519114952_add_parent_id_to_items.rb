class AddParentIdToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :parent_id, :integer
  end
end
