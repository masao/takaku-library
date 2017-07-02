# This migration comes from enju_biblio_engine (originally 20160801080637)
class AddMostRecentToResourceExportFileTransitions < ActiveRecord::Migration
  def up
    add_column :resource_export_file_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :resource_export_file_transitions, :most_recent
  end
end
