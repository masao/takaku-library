# This migration comes from enju_biblio_engine (originally 20120413170705)
class AddErrorMessageToResourceImportFile < ActiveRecord::Migration
  def change
    add_column :resource_import_files, :error_message, :text
  end
end
