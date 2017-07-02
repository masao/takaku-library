# This migration comes from enju_library_engine (originally 20160813191733)
class AddFamilyNameFirstToLibraryGroup < ActiveRecord::Migration
  def change
    add_column :library_groups, :family_name_first, :boolean, default: true
  end
end
