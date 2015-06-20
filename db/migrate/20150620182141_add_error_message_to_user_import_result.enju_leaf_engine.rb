# This migration comes from enju_leaf_engine (originally 20150506105356)
class AddErrorMessageToUserImportResult < ActiveRecord::Migration
  def change
    add_column :user_import_results, :error_message, :text
  end
end
