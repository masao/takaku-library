# This migration comes from enju_biblio_engine (originally 20140822114527)
class AddErrorMessageToResourceImportResult < ActiveRecord::Migration
  def change
    add_column :resource_import_results, :error_message, :text
  end
end
