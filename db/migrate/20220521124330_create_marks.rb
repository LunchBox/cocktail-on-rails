class CreateMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :marks do |t|
			t.string :context
			t.references :markable, polymorphic: true
			t.references :user

      t.timestamps
    end
  end
end
