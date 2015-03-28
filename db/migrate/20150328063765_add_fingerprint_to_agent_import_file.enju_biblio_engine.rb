# This migration comes from enju_biblio_engine (originally 20120413161403)
class AddFingerprintToAgentImportFile < ActiveRecord::Migration
  def change
    add_column :agent_import_files, :agent_import_fingerprint, :string
  end
end
