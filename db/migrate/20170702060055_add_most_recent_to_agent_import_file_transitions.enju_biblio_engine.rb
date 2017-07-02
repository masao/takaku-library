# This migration comes from enju_biblio_engine (originally 20160801080643)
class AddMostRecentToAgentImportFileTransitions < ActiveRecord::Migration
  def up
    add_column :agent_import_file_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :agent_import_file_transitions, :most_recent
  end
end
