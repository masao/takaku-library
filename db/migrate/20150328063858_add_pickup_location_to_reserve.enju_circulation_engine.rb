# This migration comes from enju_circulation_engine (originally 20111129044509)
class AddPickupLocationToReserve < ActiveRecord::Migration
  def change
    add_column :reserves, :pickup_location_id, :integer
    add_index :reserves, :pickup_location_id
  end
end
