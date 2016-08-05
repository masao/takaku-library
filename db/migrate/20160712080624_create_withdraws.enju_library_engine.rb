# This migration comes from enju_library_engine (originally 20150924115059)
class CreateWithdraws < ActiveRecord::Migration
  def change
    create_table :withdraws do |t|
      t.integer :basket_id
      t.integer :item_id
      t.integer :librarian_id

      t.timestamps null: false
    end
    add_index :withdraws, :basket_id
    add_index :withdraws, :item_id
  end
end
