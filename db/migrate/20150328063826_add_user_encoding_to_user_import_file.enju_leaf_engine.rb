# This migration comes from enju_leaf_engine (originally 20140628072217)
class AddUserEncodingToUserImportFile < ActiveRecord::Migration
  def change
    add_column :user_import_files, :user_encoding, :string
  end
end
