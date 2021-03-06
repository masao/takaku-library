# This migration comes from enju_biblio_engine (originally 20080830172106)
class CreateExemplifies < ActiveRecord::Migration
  def change
    create_table :exemplifies do |t|
      t.integer :manifestation_id, :null => false
      t.integer :item_id, :null => false
      t.integer :position

      t.timestamps
    end
    add_index :exemplifies, :manifestation_id
    add_index :exemplifies, :item_id, :unique => true
  end
end
