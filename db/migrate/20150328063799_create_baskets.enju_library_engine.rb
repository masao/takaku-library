# This migration comes from enju_library_engine (originally 120)
class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.integer :user_id
      t.text :note
      t.integer :lock_version, :default => 0, :null => false

      t.timestamps
    end
    add_index :baskets, :user_id
  end
end
