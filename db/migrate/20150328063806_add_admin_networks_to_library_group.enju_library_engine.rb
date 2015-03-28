# This migration comes from enju_library_engine (originally 20100211105551)
class AddAdminNetworksToLibraryGroup < ActiveRecord::Migration
  def self.up
    add_column :library_groups, :admin_networks, :text
  end

  def self.down
    remove_column :library_groups, :admin_networks
  end
end
