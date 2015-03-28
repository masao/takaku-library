# This migration comes from enju_biblio_engine (originally 20110620173525)
class AddBookstoreIdToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :bookstore_id, :integer
    add_index :items, :bookstore_id
  end

  def self.down
    remove_index :items, :bookstore_id
    remove_column :items, :bookstore_id
  end
end
