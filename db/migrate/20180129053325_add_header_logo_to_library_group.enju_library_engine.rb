# This migration comes from enju_library_engine (originally 20171014084528)
class AddHeaderLogoToLibraryGroup < ActiveRecord::Migration
  def change
    add_attachment :library_groups, :header_logo
  end
end
