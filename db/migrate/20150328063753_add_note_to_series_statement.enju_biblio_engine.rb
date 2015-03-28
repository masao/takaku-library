# This migration comes from enju_biblio_engine (originally 20110918162329)
class AddNoteToSeriesStatement < ActiveRecord::Migration
  def self.up
    add_column :series_statements, :note, :text
  end

  def self.down
    remove_column :series_statements, :note
  end
end
