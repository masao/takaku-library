# This migration comes from enju_leaf_engine (originally 20140811031145)
class AddExpiredAtToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :expired_at, :datetime
  end
end
