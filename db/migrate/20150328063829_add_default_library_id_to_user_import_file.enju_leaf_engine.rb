# This migration comes from enju_leaf_engine (originally 20140720170714)
class AddDefaultLibraryIdToUserImportFile < ActiveRecord::Migration
  def change
    add_column :user_import_files, :default_library_id, :integer
  end
end
