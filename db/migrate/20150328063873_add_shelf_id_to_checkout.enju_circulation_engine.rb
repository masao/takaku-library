# This migration comes from enju_circulation_engine (originally 20141014065831)
class AddShelfIdToCheckout < ActiveRecord::Migration
  def change
    add_column :checkouts, :shelf_id, :integer
    add_index :checkouts, :shelf_id
  end
end
