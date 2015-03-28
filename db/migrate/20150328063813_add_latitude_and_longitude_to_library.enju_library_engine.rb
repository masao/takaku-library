# This migration comes from enju_library_engine (originally 20130412083556)
class AddLatitudeAndLongitudeToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :latitude, :float
    add_column :libraries, :longitude, :float
  end
end
