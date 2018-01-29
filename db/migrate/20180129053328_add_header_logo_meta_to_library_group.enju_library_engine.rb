# This migration comes from enju_library_engine (originally 20180102162311)
class AddHeaderLogoMetaToLibraryGroup < ActiveRecord::Migration
  def change
    add_column :library_groups, :header_logo_meta, :text
  end
end
