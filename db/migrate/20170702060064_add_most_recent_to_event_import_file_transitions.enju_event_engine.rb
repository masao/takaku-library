# This migration comes from enju_event_engine (originally 20160703184258)
class AddMostRecentToEventImportFileTransitions < ActiveRecord::Migration
  def up
    add_column :event_import_file_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :event_import_file_transitions, :most_recent
  end
end
