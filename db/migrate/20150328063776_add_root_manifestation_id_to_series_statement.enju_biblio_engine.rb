# This migration comes from enju_biblio_engine (originally 20130429020822)
class AddRootManifestationIdToSeriesStatement < ActiveRecord::Migration
  def change
    add_column :series_statements, :root_manifestation_id, :integer
    add_index :series_statements, :root_manifestation_id
  end
end
