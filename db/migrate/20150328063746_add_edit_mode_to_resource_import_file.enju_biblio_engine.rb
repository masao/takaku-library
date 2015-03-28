# This migration comes from enju_biblio_engine (originally 20110603184217)
class AddEditModeToResourceImportFile < ActiveRecord::Migration
  def self.up
    add_column :resource_import_files, :edit_mode, :string
  end

  def self.down
    remove_column :resource_import_files, :edit_mode
  end
end
