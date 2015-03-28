# This migration comes from enju_circulation_engine (originally 20130519065638)
class AddLockVersionToReserve < ActiveRecord::Migration
  def change
    add_column :reserves, :lock_version, :integer, :default => 0, :null => false
  end
end
