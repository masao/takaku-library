# This migration comes from enju_leaf_engine (originally 20140720170735)
class AddDefaultUserGroupIdToUserImportFile < ActiveRecord::Migration
  def change
    add_column :user_import_files, :default_user_group_id, :integer
  end
end
