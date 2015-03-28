# This migration comes from enju_biblio_engine (originally 20120413170720)
class AddErrorMessageToAgentImportFile < ActiveRecord::Migration
  def change
    add_column :agent_import_files, :error_message, :text
  end
end
