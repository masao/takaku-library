# This migration comes from enju_library_engine (originally 20140821151023)
class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.integer :library_group_id
      t.string :property
      t.string :code
      t.integer :position

      t.timestamps
    end

    add_index :colors, :library_group_id
  end
end
