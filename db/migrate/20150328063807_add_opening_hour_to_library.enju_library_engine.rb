# This migration comes from enju_library_engine (originally 20100314190054)
class AddOpeningHourToLibrary < ActiveRecord::Migration
  def self.up
    add_column :libraries, :opening_hour, :text
  end

  def self.down
    remove_column :libraries, :opening_hour
  end
end
