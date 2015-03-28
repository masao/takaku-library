# This migration comes from enju_leaf_engine (originally 20140110131010)
class CreateUserImportResults < ActiveRecord::Migration
  def change
    create_table :user_import_results do |t|
      t.integer :user_import_file_id
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
