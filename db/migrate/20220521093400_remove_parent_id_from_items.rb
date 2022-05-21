class RemoveParentIdFromItems < ActiveRecord::Migration[7.0]
  def change
		remove_column :items, :parent_id, :integer
  end
end
