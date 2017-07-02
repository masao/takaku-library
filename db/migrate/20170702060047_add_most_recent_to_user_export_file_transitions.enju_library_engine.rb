# This migration comes from enju_library_engine (originally 20160627232316)
class AddMostRecentToUserExportFileTransitions < ActiveRecord::Migration
  def up
    add_column :user_export_file_transitions, :most_recent, :boolean, null: true
  end

  def down
    remove_column :user_export_file_transitions, :most_recent
  end
end
