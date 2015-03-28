# This migration comes from enju_circulation_engine (originally 20120424103932)
class AddLibrarianIdToCheckedItem < ActiveRecord::Migration
  def change
    add_column :checked_items, :librarian_id, :integer
  end
end
