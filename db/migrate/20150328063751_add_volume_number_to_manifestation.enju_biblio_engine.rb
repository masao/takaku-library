# This migration comes from enju_biblio_engine (originally 20110916091020)
class AddVolumeNumberToManifestation < ActiveRecord::Migration
  def self.up
    add_column :manifestations, :volume_number, :integer
    add_column :manifestations, :issue_number, :integer
    add_column :manifestations, :serial_number, :integer
  end

  def self.down
    remove_column :manifestations, :serial_number
    remove_column :manifestations, :issue_number
    remove_column :manifestations, :volume_number
  end
end
