# This migration comes from enju_circulation_engine (originally 20141020120523)
class AddLibraryIdToCheckout < ActiveRecord::Migration
  def change
    add_column :checkouts, :library_id, :integer
    add_index :checkouts, :library_id
  end
end
