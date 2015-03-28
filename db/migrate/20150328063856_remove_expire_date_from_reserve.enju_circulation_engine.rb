# This migration comes from enju_circulation_engine (originally 20110621093332)
class RemoveExpireDateFromReserve < ActiveRecord::Migration
  def self.up
    remove_column :reserves, :expire_date
  end

  def self.down
    add_column :reserves, :expire_date, :string
  end
end
