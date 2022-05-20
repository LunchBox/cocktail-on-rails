class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
			t.string :title
			t.text :comment
			t.references :commentable, polymorphic: true
			t.references :user
			t.string :role, default: "comments"
      t.timestamps
    end

		add_index :comments, [:commentable_type, :commentable_id]
  end
end
