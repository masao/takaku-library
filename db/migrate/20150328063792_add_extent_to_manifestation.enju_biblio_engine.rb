# This migration comes from enju_biblio_engine (originally 20140823083524)
class AddExtentToManifestation < ActiveRecord::Migration
  def change
    add_column :manifestations, :extent, :text
  end
end
