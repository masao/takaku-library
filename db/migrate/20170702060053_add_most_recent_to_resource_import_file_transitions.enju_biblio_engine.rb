# This migration comes from enju_biblio_engine (originally 20160801080619)
class AddMostRecentToResourceImportFileTransitions < ActiveRecord::Migration
  def up
    add_column :resource_import_file_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :resource_import_file_transitions, :most_recent
  end
end
