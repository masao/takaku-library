# This migration comes from enju_biblio_engine (originally 20120413161340)
class AddFingerprintToResourceImportFile < ActiveRecord::Migration
  def change
    add_column :resource_import_files, :resource_import_fingerprint, :string
  end
end
