# This migration comes from enju_circulation_engine (originally 20110301134521)
class AddExpireDateToReserve < ActiveRecord::Migration
  def self.up
    add_column :reserves, :expire_date, :string
  end

  def self.down
    remove_column :reserves, :expire_date
  end
end
