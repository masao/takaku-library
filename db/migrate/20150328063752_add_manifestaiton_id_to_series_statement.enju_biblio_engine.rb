# This migration comes from enju_biblio_engine (originally 20110916103953)
class AddManifestaitonIdToSeriesStatement < ActiveRecord::Migration
  def self.up
    add_column :series_statements, :manifestation_id, :integer
    add_index :series_statements, :manifestation_id
  end

  def self.down
    remove_column :series_statements, :manifestation_id
  end
end
